# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'

c = <<TEST
<table id="js-table-currencies">

				<tbody>
				<tr>
					<td>AED</td>
					<td>د.إ</td>
					<td>784</td>
					<td>UAE Dirham</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ae">UAE</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>AFN</td>
					<td>Af</td>
					<td>971</td>
					<td>Afghani</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-af">Afghanistan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ALL</td>
					<td>L</td>
					<td>008</td>
					<td>Lek</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-al">Albania</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>AMD</td>
					<td>Դ</td>
					<td>051</td>
					<td>Armenian Dram</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-am">Armenia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>AOA</td>
					<td>Kz</td>
					<td>973</td>
					<td>Kwanza</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ao">Angola</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ARS</td>
					<td>$</td>
					<td>032</td>
					<td>Argentine Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ar">Argentina</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>AUD</td>
					<td>$</td>
					<td>036</td>
					<td>Australian Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-au">Australia</li>
							<li class="ag-flags-country_item icon-country-ki">Kiribati</li>
							<li class="ag-flags-country_item icon-country-cc">Coconut Islands</li>
							<li class="ag-flags-country_item icon-country-nr">Nauru</li>
							<li class="ag-flags-country_item icon-country-tuvalu">Tuvalu</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>AWG</td>
					<td>ƒ</td>
					<td>533</td>
					<td>Aruban Guilder/Florin</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-aw">Aruba</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>AZN</td>
					<td>ман</td>
					<td>944</td>
					<td>Azerbaijanian Manat</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-az">Azerbaijan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BAM</td>
					<td>КМ</td>
					<td>977</td>
					<td>Konvertibilna Marka</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ba">Bosnia and Herzegovina</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BBD</td>
					<td>$</td>
					<td>052</td>
					<td>Barbados Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bb">Barbados</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BDT</td>
					<td>৳</td>
					<td>050</td>
					<td>Taka</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bd">Bangladesh</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BGN</td>
					<td>лв</td>
					<td>975</td>
					<td>Bulgarian Lev</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bg">Bulgaria</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BHD</td>
					<td>ب.د</td>
					<td>048</td>
					<td>Bahraini Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bh">Bahrain</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BIF</td>
					<td>₣</td>
					<td>108</td>
					<td>Burundi Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bi">Burundi</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BMD</td>
					<td>$</td>
					<td>060</td>
					<td>Bermudian Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bm">Bermuda</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BND</td>
					<td>$</td>
					<td>096</td>
					<td>Brunei Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bn">Brunei</li>
							<li class="ag-flags-country_item icon-country-sg">Singapore</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BOB</td>
					<td>Bs.</td>
					<td>068</td>
					<td>Boliviano</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bo">Bolivia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BRL</td>
					<td>R$</td>
					<td>986</td>
					<td>Brazilian Real</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-br">Brazil</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BSD</td>
					<td>$</td>
					<td>044</td>
					<td>Bahamian Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bs">Bahamas</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BTN</td>
					<td></td>
					<td>064</td>
					<td>Ngultrum</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bt">Bhutan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BWP</td>
					<td>P</td>
					<td>072</td>
					<td>Pula</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bw">Botswana</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BYR</td>
					<td>Br</td>
					<td>974</td>
					<td>Belarussian Ruble</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-by">Belarus</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>BZD</td>
					<td>$</td>
					<td>084</td>
					<td>Belize Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bz">Belize</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CAD</td>
					<td>$</td>
					<td>124</td>
					<td>Canadian Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ca">Canada</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CDF</td>
					<td>₣</td>
					<td>976</td>
					<td>Congolese Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cd">Congo (Kinshasa)</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CHF</td>
					<td>₣</td>
					<td>756</td>
					<td>Swiss Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-li">Lichtenstein</li>
							<li class="ag-flags-country_item icon-country-ch">Switzerland</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CLP</td>
					<td>$</td>
					<td>152</td>
					<td>Chilean Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cl">Chile</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CNY</td>
					<td>¥</td>
					<td>156</td>
					<td>Yuan</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cn">China</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>COP</td>
					<td>$</td>
					<td>170</td>
					<td>Colombian Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-co">Colombia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CRC</td>
					<td>₡</td>
					<td>188</td>
					<td>Costa Rican Colon</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cr">Costa Rica</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CUP</td>
					<td>$</td>
					<td>192</td>
					<td>Cuban Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cu">Cuba</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CVE</td>
					<td>$</td>
					<td>132</td>
					<td>Cape Verde Escudo</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cv">Cape Verde</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>CZK</td>
					<td>Kč</td>
					<td>203</td>
					<td>Czech Koruna</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-cz">Czech Republic</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>DJF</td>
					<td>₣</td>
					<td>262</td>
					<td>Djibouti Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-dj">Djibouti</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>DKK</td>
					<td>kr</td>
					<td>208</td>
					<td>Danish Krone</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-dk">Denmark</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>DOP</td>
					<td>$</td>
					<td>214</td>
					<td>Dominican Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-do">Dominican Republic</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>DZD</td>
					<td>د.ج</td>
					<td>012</td>
					<td>Algerian Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-dz">Algeria</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>EGP</td>
					<td>£</td>
					<td>818</td>
					<td>Egyptian Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-eg">Egypt</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ERN</td>
					<td>Nfk</td>
					<td>232</td>
					<td>Nakfa</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-er">Eritrea</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ETB</td>
					<td></td>
					<td>230</td>
					<td>Ethiopian Birr</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-et">Ethiopia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>EUR</td>
					<td>€</td>
					<td>978</td>
					<td>Euro</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gb">Akrotiri and Dhekelia</li>
							<li class="ag-flags-country_item icon-country-ad">Andorra</li>
							<li class="ag-flags-country_item icon-country-at">Austria</li>
							<li class="ag-flags-country_item icon-country-be">Belgium</li>
							<li class="ag-flags-country_item icon-country-cy">Cyprus</li>
							<li class="ag-flags-country_item icon-country-ee">Estonia</li>
							<li class="ag-flags-country_item icon-country-fi">Finland</li>
							<li class="ag-flags-country_item icon-country-fr">France</li>
							<li class="ag-flags-country_item icon-country-de">Germany</li>
							<li class="ag-flags-country_item icon-country-gr">Greece</li>
							<li class="ag-flags-country_item icon-country-ie">Ireland</li>
							<li class="ag-flags-country_item icon-country-it">Italy</li>
							<li class="ag-flags-country_item icon-country-kv">Kosovo</li>
							<li class="ag-flags-country_item icon-country-lv">Latvia</li>
							<li class="ag-flags-country_item icon-country-lt">Lithuania</li>
							<li class="ag-flags-country_item icon-country-lu">Luxembourg</li>
							<li class="ag-flags-country_item icon-country-mt">Malta</li>
							<li class="ag-flags-country_item icon-country-mc">Monaco</li>
							<li class="ag-flags-country_item icon-country-me">Montenegro</li>
							<li class="ag-flags-country_item icon-country-nl">Netherlands</li>
							<li class="ag-flags-country_item icon-country-pt">Portugal</li>
							<li class="ag-flags-country_item icon-country-sm">San-Marino</li>
							<li class="ag-flags-country_item icon-country-sk">Slovakia</li>
							<li class="ag-flags-country_item icon-country-si">Slovenia</li>
							<li class="ag-flags-country_item icon-country-es">Spain</li>
							<li class="ag-flags-country_item icon-country-va">Vatican</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>FJD</td>
					<td>$</td>
					<td>242</td>
					<td>Fiji Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-fj">Fiji</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>FKP</td>
					<td>£</td>
					<td>238</td>
					<td>Falkland Islands Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-fk">Falkland Islands</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GBP</td>
					<td>£</td>
					<td>826</td>
					<td>Pound Sterling</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-alderney">Alderney</li>
							<li class="ag-flags-country_item icon-country-io">British Indian Ocean Territory</li>
							<li class="ag-flags-country_item icon-country-gb">Great Britain</li>
							<li class="ag-flags-country_item icon-country-fk">Isle of Maine</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GEL</td>
					<td>ლ</td>
					<td>981</td>
					<td>Lari</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ge">Georgia</li>
							<li class="ag-flags-country_item icon-country-south-ossetia">South Ossetia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GHS</td>
					<td>₵</td>
					<td>936</td>
					<td>Cedi</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gh">Ghana</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GIP</td>
					<td>£</td>
					<td>292</td>
					<td>Gibraltar Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gi">Gibraltar</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GMD</td>
					<td>D</td>
					<td>270</td>
					<td>Dalasi</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gm">Gambia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GNF</td>
					<td>₣</td>
					<td>324</td>
					<td>Guinea Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gn">Guinea</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GTQ</td>
					<td>Q</td>
					<td>320</td>
					<td>Quetzal</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gt">Guatemala</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>GYD</td>
					<td>$</td>
					<td>328</td>
					<td>Guyana Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gy">Guyana</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>HKD</td>
					<td>$</td>
					<td>344</td>
					<td>Hong Kong Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-hk">Hong Kong</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>HNL</td>
					<td>L</td>
					<td>340</td>
					<td>Lempira</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-hn">Honduras</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>HRK</td>
					<td>Kn</td>
					<td>191</td>
					<td>Croatian Kuna</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-hr">Croatia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>HTG</td>
					<td>G</td>
					<td>332</td>
					<td>Gourde</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ht">Haiti</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>HUF</td>
					<td>Ft</td>
					<td>348</td>
					<td>Forint</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-hu">Hungary</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>IDR</td>
					<td>Rp</td>
					<td>360</td>
					<td>Rupiah</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-id">Indonesia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ILS</td>
					<td>₪</td>
					<td>376</td>
					<td>New Israeli Shekel</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-il">Israel</li>
							<li class="ag-flags-country_item icon-country-ps">Palestine</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>INR</td>
					<td>₹</td>
					<td>356</td>
					<td>Indian Rupee</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bt">Bhutan</li>
							<li class="ag-flags-country_item icon-country-in">India</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>IQD</td>
					<td>ع.د</td>
					<td>368</td>
					<td>Iraqi Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-iq">Iraq</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>IRR</td>
					<td>﷼</td>
					<td>364</td>
					<td>Iranian Rial</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ir">Iran</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ISK</td>
					<td>Kr</td>
					<td>352</td>
					<td>Iceland Krona</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-is">Iceland</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>JMD</td>
					<td>$</td>
					<td>388</td>
					<td>Jamaican Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-jm">Jamaica</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>JOD</td>
					<td>د.ا</td>
					<td>400</td>
					<td>Jordanian Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-jo">Jordan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>JPY</td>
					<td>¥</td>
					<td>392</td>
					<td>Yen</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-jp">Japan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KES</td>
					<td>Sh</td>
					<td>404</td>
					<td>Kenyan Shilling</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ke">Kenya</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KGS</td>
					<td></td>
					<td>417</td>
					<td>Som</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-kg">Kyrgyzstan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KHR</td>
					<td>៛</td>
					<td>116</td>
					<td>Riel</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-kh">Cambodia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KPW</td>
					<td>₩</td>
					<td>408</td>
					<td>North Korean Won</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-kp">North Korea</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KRW</td>
					<td>₩</td>
					<td>410</td>
					<td>South Korean Won</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-kr">South Korea</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KWD</td>
					<td>د.ك</td>
					<td>414</td>
					<td>Kuwaiti Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ke">Kuwait</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KYD</td>
					<td>$</td>
					<td>136</td>
					<td>Cayman Islands Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ky">Cayman Islands</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>KZT</td>
					<td>〒</td>
					<td>398</td>
					<td>Tenge</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-kz">Kazakhstan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>LAK</td>
					<td>₭</td>
					<td>418</td>
					<td>Kip</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-la">Laos</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>LBP</td>
					<td>ل.ل</td>
					<td>422</td>
					<td>Lebanese Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-lb">Lebanon</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>LKR</td>
					<td>Rs</td>
					<td>144</td>
					<td>Sri Lanka Rupee</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-lk">Sri Lanka</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>LRD</td>
					<td>$</td>
					<td>430</td>
					<td>Liberian Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-lr">Liberia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>LSL</td>
					<td>L</td>
					<td>426</td>
					<td>Loti</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-lesotho">Lesotho</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>LYD</td>
					<td>ل.د</td>
					<td>434</td>
					<td>Libyan Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ly">Libya</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MAD</td>
					<td>د.م.</td>
					<td>504</td>
					<td>Moroccan Dirham</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ma">Morocco</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MDL</td>
					<td>L</td>
					<td>498</td>
					<td>Moldavian Leu</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-md">Moldova</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MGA</td>
					<td></td>
					<td>969</td>
					<td>Malagasy Ariary</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mg">Madagascar</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MKD</td>
					<td>ден</td>
					<td>807</td>
					<td>Denar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mk">Macedonia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MMK</td>
					<td>K</td>
					<td>104</td>
					<td>Kyat</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mm">Myanmar (Burma)</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MNT</td>
					<td>₮</td>
					<td>496</td>
					<td>Tugrik</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mn">Mongolia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MOP</td>
					<td>P</td>
					<td>446</td>
					<td>Pataca</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mo">Macao</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MRO</td>
					<td>UM</td>
					<td>478</td>
					<td>Ouguiya</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mr">Mauritania</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MUR</td>
					<td>₨</td>
					<td>480</td>
					<td>Mauritius Rupee</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mu">Mauritius</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MVR</td>
					<td>ރ.</td>
					<td>462</td>
					<td>Rufiyaa</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mv">Maldives</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MWK</td>
					<td>MK</td>
					<td>454</td>
					<td>Kwacha</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mw">Malawi</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MXN</td>
					<td>$</td>
					<td>484</td>
					<td>Mexican Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mx">Mexico</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MYR</td>
					<td>RM</td>
					<td>458</td>
					<td>Malaysian Ringgit</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-my">Malaysia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>MZN</td>
					<td>MTn</td>
					<td>943</td>
					<td>Metical</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-mz">Mozambique</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>NAD</td>
					<td>$</td>
					<td>516</td>
					<td>Namibia Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-na">Namibia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>NGN</td>
					<td>₦</td>
					<td>566</td>
					<td>Naira</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ng">Nigeria</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>NIO</td>
					<td>C$</td>
					<td>558</td>
					<td>Cordoba Oro</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ni">Nicaragua</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>NOK</td>
					<td>kr</td>
					<td>578</td>
					<td>Norwegian Krone</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-no">Norway</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>NPR</td>
					<td>₨</td>
					<td>524</td>
					<td>Nepalese Rupee</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-np">Nepal</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>NZD</td>
					<td>$</td>
					<td>554</td>
					<td>New Zealand Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ck">Cook Islands</li>
							<li class="ag-flags-country_item icon-country-nz">New Zealand</li>
							<li class="ag-flags-country_item icon-country-nu">Niue</li>
							<li class="ag-flags-country_item icon-country-pn">Pitcairn Island</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>OMR</td>
					<td>ر.ع.</td>
					<td>512</td>
					<td>Rial Omani</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-om">Oman</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PAB</td>
					<td>B/.</td>
					<td>590</td>
					<td>Balboa</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-pa">Panama</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PEN</td>
					<td>S/.</td>
					<td>604</td>
					<td>Nuevo Sol</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-pe">Peru</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PGK</td>
					<td>K</td>
					<td>598</td>
					<td>Kina</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-pg">Papua New Guinea</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PHP</td>
					<td>₱</td>
					<td>608</td>
					<td>Philippine Peso</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ph">Philippines</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PKR</td>
					<td>₨</td>
					<td>586</td>
					<td>Pakistan Rupee</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-pk">Pakistan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PLN</td>
					<td>zł</td>
					<td>985</td>
					<td>PZloty</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-pl">Poland</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>PYG</td>
					<td>₲</td>
					<td>600</td>
					<td>Guarani</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-py">Paraguay</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>QAR</td>
					<td>ر.ق</td>
					<td>634</td>
					<td>Qatari Rial</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-qa">Qatar</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>RON</td>
					<td>L</td>
					<td>946</td>
					<td>Leu</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ro">Romania</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>RSD</td>
					<td>din</td>
					<td>941</td>
					<td>Serbian Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-kv">Kosovo</li>
							<li class="ag-flags-country_item icon-country-rs">Serbia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>RUB</td>
					<td>р. </td>
					<td>643</td>
					<td>Russian Ruble</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ru">Russia</li>
							<li class="ag-flags-country_item icon-country-south-ossetia">South Ossetia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>RWF</td>
					<td>₣</td>
					<td>646</td>
					<td>Rwanda Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-rw">Rwanda</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SAR</td>
					<td>ر.س</td>
					<td>682</td>
					<td>Saudi Riyal</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sa">Saudi Arabia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SBD</td>
					<td>$</td>
					<td>090</td>
					<td>Solomon Islands Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sb">Solomon Islands</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SCR</td>
					<td>₨</td>
					<td>690</td>
					<td>Seychelles Rupee</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sc">Seychelles</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SDG</td>
					<td>£</td>
					<td>938</td>
					<td>Sudanese Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sd">Sudan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SEK</td>
					<td>kr</td>
					<td>752</td>
					<td>Swedish Krona</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-se">Sweden</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SGD</td>
					<td>$</td>
					<td>702</td>
					<td>Singapore Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bn">Brunei</li>
							<li class="ag-flags-country_item icon-country-sg">Singapore</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SHP</td>
					<td>£</td>
					<td>654</td>
					<td>Saint Helena Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-gb">Ascension Island</li>
							<li class="ag-flags-country_item icon-country-sh">Saint Helena</li>
							<li class="ag-flags-country_item icon-country-sh">Tristan da Cunha</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SLL</td>
					<td>Le</td>
					<td>694</td>
					<td>Leone</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sl">Sierra Leone</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SOS</td>
					<td>Sh</td>
					<td>706</td>
					<td>Somali Shilling</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-so">Somalia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SRD</td>
					<td>$</td>
					<td>968</td>
					<td>Suriname Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sr">Suriname</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>STD</td>
					<td>Db</td>
					<td>678</td>
					<td>Dobra</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-st">Sao Tome and Principe</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SYP</td>
					<td>ل.س</td>
					<td>760</td>
					<td>Syrian Pound</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sy">Syria</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>SZL</td>
					<td>L</td>
					<td>748</td>
					<td>Lilangeni</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-sz">Swaziland</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>THB</td>
					<td>฿</td>
					<td>764</td>
					<td>Baht</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-th">Thailand</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TJS</td>
					<td>ЅМ</td>
					<td>972</td>
					<td>Somoni</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-tj">Tajikistan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TMT</td>
					<td>m</td>
					<td>934</td>
					<td>Manat</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-tm">Turkmenistan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TND</td>
					<td>د.ت</td>
					<td>788</td>
					<td>Tunisian Dinar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-tn">Tunisia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TOP</td>
					<td>T$</td>
					<td>776</td>
					<td>Pa’anga</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-to">Tonga</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TRY</td>
					<td>₤</td>
					<td>949</td>
					<td>Turkish Lira</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ncyprus">North Cyprus</li>
							<li class="ag-flags-country_item icon-country-tr">Turkey</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TTD</td>
					<td>$</td>
					<td>780</td>
					<td>Trinidad and Tobago Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-tt">Trinidad and Tobago</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TWD</td>
					<td>$</td>
					<td>901</td>
					<td>Taiwan Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-tw">Taiwan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>TZS</td>
					<td>Sh</td>
					<td>834</td>
					<td>Tanzanian Shilling</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-tz">Tanzania</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>UAH</td>
					<td>₴</td>
					<td>980</td>
					<td>Hryvnia</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ua">Ukraine</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>UGX</td>
					<td>Sh</td>
					<td>800</td>
					<td>Uganda Shilling</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ug">Uganda</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>USD</td>
					<td>$</td>
					<td>840</td>
					<td>US Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-as">American Samoa</li>
							<li class="ag-flags-country_item icon-country-io">British Indian Ocean Territory</li>
							<li class="ag-flags-country_item icon-country-vg">British Virgin Islands</li>
							<li class="ag-flags-country_item icon-country-gu">Guam</li>
							<li class="ag-flags-country_item icon-country-ht">Haiti</li>
							<li class="ag-flags-country_item icon-country-mh">Marshall Islands</li>
							<li class="ag-flags-country_item icon-country-fm">Micronesia</li>
							<li class="ag-flags-country_item icon-country-mp">Northern Mariana Islands</li>
							<li class="ag-flags-country_item icon-country-us">Pacific Remote islands</li>
							<li class="ag-flags-country_item icon-country-pw">Palau</li>
							<li class="ag-flags-country_item icon-country-pa">Panama</li>
							<li class="ag-flags-country_item icon-country-pr">Puerto Rico</li>
							<li class="ag-flags-country_item icon-country-tc">Turks and Caicos Islands</li>
							<li class="ag-flags-country_item icon-country-us">United States of America</li>
							<li class="ag-flags-country_item icon-country-vi">US Virgin Islands</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>UYU</td>
					<td>$</td>
					<td>858</td>
					<td>Peso Uruguayo</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-uy">Uruguay</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>UZS</td>
					<td></td>
					<td>860</td>
					<td>Uzbekistan Sum</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-uz">Uzbekistan</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>VEF</td>
					<td>Bs F</td>
					<td>937</td>
					<td>Bolivar Fuerte</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ve">Venezuela</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>VND</td>
					<td>₫</td>
					<td>704</td>
					<td>Dong</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-vn">Vietnam</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>VUV</td>
					<td>Vt</td>
					<td>548</td>
					<td>Vatu</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-vu">Vanuatu</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>WST</td>
					<td>T</td>
					<td>882</td>
					<td>Tala</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ws">Samoa</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>XAF</td>
					<td>₣</td>
					<td>950</td>
					<td>CFA Franc BCEAO</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-bj">Benin</li>
							<li class="ag-flags-country_item icon-country-bf">Burkina Faso</li>
							<li class="ag-flags-country_item icon-country-cm">Cameroon</li>
							<li class="ag-flags-country_item icon-country-cf">Central African Republic</li>
							<li class="ag-flags-country_item icon-country-td">Chad</li>
							<li class="ag-flags-country_item icon-country-cg">Congo (Brazzaville)</li>
							<li class="ag-flags-country_item icon-country-ci">Côte d'Ivoire</li>
							<li class="ag-flags-country_item icon-country-gq">Equatorial Guinea</li>
							<li class="ag-flags-country_item icon-country-ga">Gabon</li>
							<li class="ag-flags-country_item icon-country-gw">Guinea-Bissau</li>
							<li class="ag-flags-country_item icon-country-ml">Mali</li>
							<li class="ag-flags-country_item icon-country-ne">Niger</li>
							<li class="ag-flags-country_item icon-country-sn">Senegal</li>
							<li class="ag-flags-country_item icon-country-tg">Togo</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>XCD</td>
					<td>$</td>
					<td>951</td>
					<td>East Caribbean Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ai">Anguilla</li>
							<li class="ag-flags-country_item icon-country-ag">Antigua and Barbuda</li>
							<li class="ag-flags-country_item icon-country-dm">Dominica</li>
							<li class="ag-flags-country_item icon-country-gd">Grenada</li>
							<li class="ag-flags-country_item icon-country-ms">Montserrat</li>
							<li class="ag-flags-country_item icon-country-kn">Saint Kitts and Nevis</li>
							<li class="ag-flags-country_item icon-country-lc">Saint Lucia</li>
							<li class="ag-flags-country_item icon-country-vc">Saint Vincent and Grenadine</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>XPF</td>
					<td>₣</td>
					<td>953</td>
					<td>CFP Franc</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-pf">French Polynesia</li>
							<li class="ag-flags-country_item icon-country-nc">New Caledonia</li>
							<li class="ag-flags-country_item icon-country-wf">Wallis and Futuna</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>YER</td>
					<td>﷼</td>
					<td>886</td>
					<td>Yemeni Rial</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-ye">Yemen</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ZAR</td>
					<td>R</td>
					<td>710</td>
					<td>Rand</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-lesotho">Lesotho</li>
							<li class="ag-flags-country_item icon-country-na">Namibia</li>
							<li class="ag-flags-country_item icon-country-za">South Africa</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ZMW</td>
					<td>ZK</td>
					<td>967</td>
					<td>Zambian Kwacha</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-zm">Zambia</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>ZWL</td>
					<td>$</td>
					<td>932</td>
					<td>Zimbabwe Dollar</td>
					<td>
						<ul>
							<li class="ag-flags-country_item icon-country-zw">Zimbabwe</li>
						</ul>
					</td>
				</tr>
				</tbody>
			</table>
TEST

data =  Nokogiri::HTML(c).css('table tr').map(&:content)
data.each do |currency|
	p ary = currency.split("\n\t\t\t\t\t")
	#["", "SHP", "£", "654", "Saint Helena Pound", "", "\t", "\t\tAscension Island", "\t\tSaint Helena", "\t\tTristan da Cunha", "\t", "\n\t\t\t\t"]
	Currency.create!(current: ary[1], symbol: ary[2], country_code: ary[3], name: ary[4], country: ary[5..-1] )
end