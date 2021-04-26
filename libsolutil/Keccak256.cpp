/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0
/** @file SHA3.cpp
 * @author Gav Wood <i@gavwood.com>
 * @date 2014
 */

#include <libsolutil/Keccak256.h>
#include "picosha3.h"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

using namespace std;

namespace solidity::util
{

h256 keccak256(bytesConstRef _input)
{
	auto sha3_256 = picosha3::get_sha3_generator<256>();
	auto hexstr = sha3_256.get_hex_string(_input);
	return h256(hexstr);
}

}
