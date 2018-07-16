from collections.abc import Mapping

from slap.theory.core import Sort

class Context(Mapping):
    def __init__(self, *args, **kw):
        self.storage = dict(*args, **kw)
    def __getitem__(self, key):
        if isinstance(key, Sort):
            key = key.name
        if key in self.storage:
            return self.storage[key]
        raise ValueError("%s not found in context!")
    def __iter__(self):
        return iter(self.storage)
    def __len__(self):
        return len(self.storage)
    def __setitem__(self, key, val):
        if isinstance(key, Sort):
            key = key.name
        self.storage[key] = val

    def load_definitions(self, d: dict):
        self.storage = d

    def s_assert(self, expr):
        raise NotImplementedError("Need to implement s_assert!")
    def s_check(self):
        raise NotImplementedError("Need to implement s_check!")
    def s_model(self):
        raise NotImplementedError("Need to implement s_model!")
    def s_push(self):
        raise NotImplementedError("Need to implement s_push!")
    def s_pop(self):
        raise NotImplementedError("Need to implement s_pop!")
    def s_reset(self):
        raise NotImplementedError("Need to implement s_reset!")
    def solve(self, AST):
        raise NotImplementedError("Need to implement s_reset!")