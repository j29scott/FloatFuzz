(*
COMPILE:
ocamlbuild -package xml-light generate_xml_job.native

USE:
cat ../bench-categorized-all.csv | sed -n -e "s&^gigatests/\(.*\)/[0-9]*/\([^;]*\);n;y;.*$&QF_BV/\1/\2&p" | ./generate_xml_job.native QF_BV_18_11_16_no_delta

 *)

let bench_name = Sys.argv.(1)

let benchs = Hashtbl.create 1024

let read_benchmark () =
  let xml = Xml.parse_file "QF_BV2016-11-1510.26.xml" in
  (match xml with
   | Xml.Element("tns:Jobs" as tns_tag,tns_field,[Xml.Element ("Job" as job_tag,_,(Xml.Element ("JobAttributes" as jobattributes_name,[],jobattibutes_child)::jobpairs))]) ->
     let mk_context jobpairs =
       Xml.Element(tns_tag,tns_field,[Xml.Element (job_tag,["name",bench_name],(Xml.Element (jobattributes_name,[],jobattibutes_child)::jobpairs))]) in
     List.iter (fun p ->
         let bench_id = Xml.attrib p "bench-id" in
         let bench_name = Xml.attrib p "bench-name" in
         let job_space_id = Xml.attrib p "job-space-id" in
         let job_space_path = Xml.attrib p "job-space-path" in
         Hashtbl.add benchs (Filename.concat job_space_path bench_name)
           (bench_id,bench_name,job_space_id,job_space_path)
       ) jobpairs;
     mk_context
   |  _ -> assert false)

let colibri_id = "9876"
let colibri_name = "colibri 22_11_16 a01aef6"

let confs_colibri =
  List.map (fun (id,name) -> (colibri_id,colibri_name,id,name))
    [
      "177100","default2_";
      (* "","default2_no_delta"; *)
      (* "","default2_no_prod_bvconstr"; *)
      (* "","default2_no_prod_bv_cong"; *)
      (* "","default2_no_prod_bv_ui"; *)
      (* "","default2_no_bv_drill"; *)
      (* "","default2_no_bv_simplif"; *)
      "177103","without_rte_";
      "177094","without_rte_no_bv_drill";
      "177110","without_rte_no_bv_simplif";
      "177101","without_rte_no_delta";
      "177085","without_rte_no_prod_bv_congr";
      "177104","without_rte_no_prod_bv_ui";
      "177108","without_rte_no_prod_bvconstr";
    ]

let other_confs = [
  "9877","Boolector","177112","default";
  "9881","CVC4","177116","default";
  "9880","Mathsat","177115","default";
  "9879","Yices","177114","default";
  "9878","Z3","177113","default";
]

let confs = confs_colibri@other_confs

let mk_pair (bench_id,bench_name,job_space_id,job_space_path) (solver_id,solver_name,config_id,config_name) =
  Xml.Element("JobPair",
              [ "bench-id",bench_id;
                "bench-name",bench_name;
                "job-space-id",job_space_id;
                "job-space-path",job_space_path;
                "config-id",config_id;
                "config-name",config_name;
                "solver-name",solver_name;
                "solver-id",solver_id],[])

let rec assemble_job acc =
  match read_line () with
  | exception End_of_file -> acc
  | line ->
    let bench = Hashtbl.find benchs line in
    let pairs = List.map (mk_pair bench) confs in
    assemble_job (pairs@acc)

let () =
  let mk_context = read_benchmark () in
  let pairs = assemble_job [] in
  let cout = open_out (bench_name ^ ".xml") in
  output_string cout (Xml.to_string_fmt (mk_context pairs));
  close_out cout;
  if Sys.command (Printf.sprintf "rm -f %s.xml.tar.gz" bench_name) <> 0 then exit 2;
  exit (Sys.command (Printf.sprintf "tar -czf %s.xml.tar.gz %s.xml" bench_name bench_name))
