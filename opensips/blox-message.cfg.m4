# /* Blox is an Opensource Session Border Controller
#  * Copyright (c) 2015-2018 "Blox" [http://www.blox.org]
#  * 
#  * This file is part of Blox.
#  * 
#  * Blox is free software: you can redistribute it and/or modify
#  * it under the terms of the GNU General Public License as published by
#  * the Free Software Foundation, either version 3 of the License, or
#  * (at your option) any later version.
#  * 
#  * This program is distributed in the hope that it will be useful,
#  * but WITHOUT ANY WARRANTY; without even the implied warranty of
#  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  * GNU General Public License for more details.
#  * 
#  * You should have received a copy of the GNU General Public License
#  * along with this program. If not, see <http://www.gnu.org/licenses/> 
#  */

route[ROUTE_MESSAGE] {
    if(method == "MESSAGE") {
        $var(TLS_BYPASS)="TLS_BYPASS_ENABLED"; if($var(TLS_BYPASS)) { route(ROUTE_TLS_BYPASS); }
       xlog("L_INFO", "MESSAGE Unprocessed, Dropping SIP Method $rm received from $fu $si $sp to $ru ($avp(rcv))\n"); #/* Don't know what to do */
       drop();
       exit;
    }
}
