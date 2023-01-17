// Copyright (c) 2017 Clément Bœsch <u pkh.me>
//
// Permission to use, copy, modify, and distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

include <globals.scad>

use <utils.scad>

use <boards/bbb.scad>
use <boards/cubieboard.scad>
use <boards/hikey.scad>
use <boards/nanopi_neo2.scad>
use <boards/orangepi_zero.scad>
use <boards/rpi3.scad>
use <boards/wemos_esp8266.scad>

boards = [
    ["bbb",             beaglebone_black_info()],
    ["cubieboard",      cubieboard_info()],
    ["hikey",           hikey_info()],
    ["nanopi_neo2",     nanopi_neo2_info()],
    ["orangepi_zero",   orangepi_zero_info()],
    ["rpi3",            raspberry_pi_3_info()],
    ["wemos_esp8266",   wemos_esp8266_info()],
];

module boards_get_plate_2d(id) {
    filter(id) {
        beaglebone_black_plate_2d();
        cubieboard_plate_2d();
        hikey_plate_2d();
        nanopi_neo2_plate_2d();
        orangepi_zero_plate_2d();
        raspberry_pi_3_plate_2d();
        wemos_esp8266_plate_2d();
    }
}

module boards_get_board(id) {
    filter(id) {
        beaglebone_black();
        cubieboard();
        hikey();
        nanopi_neo2();
        orangepi_zero();
        raspberry_pi_3();
        wemos_esp8266();
    }
}

function boards_get_id(name) = search([name], boards)[0];
function boards_get_info(id) = boards[id][1];
