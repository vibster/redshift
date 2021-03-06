from libc.stdint cimport uint64_t, int64_t


cdef extern from "MurmurHash3.h":
    void MurmurHash3_x86_32(void * key, uint64_t len, uint64_t seed, void* out)
    void MurmurHash3_x86_128(void * key, uint64_t len, uint64_t seed, void* out)

cdef extern from "MurmurHash2.h":
    uint64_t MurmurHash64A(void * key, uint64_t len, int64_t seed)
    uint64_t MurmurHash64B(void * key, uint64_t len, int64_t seed)
