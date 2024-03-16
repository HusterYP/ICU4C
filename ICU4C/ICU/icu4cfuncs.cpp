//
//  icu4cfuncs.cpp
//  ICU4C
//
//  Created by Ping on 2024/3/16.
//

#include "icu4cfuncs.hpp"
#include <unicode/unistr.h>

using namespace U_ICU_NAMESPACE;

extern "C"
int toUpper(const char* str, char* rstr, uint32_t sz) {
    UnicodeString ucs = UnicodeString::fromUTF8(StringPiece(str));
    ucs.toUpper();
    std::string result;
    ucs.toUTF8String(result);
    if (result.size() > sz - 1) {
        return 0;
    }
    std::memcpy(rstr, result.c_str(), result.size());
    rstr[result.size()] = 0;
    return 1;
}
