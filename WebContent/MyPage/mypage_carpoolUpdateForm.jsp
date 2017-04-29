<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertAction.carpool" method="post">	
    <div id="carpool_map">
    	<h3 id="carpool_title">카풀의 출발지와 목적지를 마크 하세요</h3>
    	<br>
    	<div id="map"></div>
    </div>
            </div>

						<div class="nlogin_total_box">
							<h3 class="nlogin_title nlogin_email_title">카풀 등록 정보</h3>
							<div class="nlogin_content">
								<div class="email_member_join">

									<table class="nlogin_table" cellpadding="0" cellspacing="0">
									<colgroup>
										<col width="130" />
										<col width="*" />
									</colgroup>
									<tbody>
										<tr>
											<td colspan="2" colspan="2">
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">출발위도</label>
													<input type="text" name="start_lati" id="join_email_id" title="이메일 주소"  maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">출발경도</label>
													<input type="text" name="start_longti" id="join_email_id" title="이메일 주소" maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">도착위도</label>
													<input type="text" name="dest_lati" id="join_email_id" title="이메일 주소"  maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">도착경도</label>
													<input type="text" name="dest_longti" id="join_email_id" title="이메일 주소" maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												<span class="nlogin_pass_info" id="join_id_helper"></span>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_form_section">
																								<div class="nlogin_date_info">출발일시는 다른 이용자를 위해 꼭 필요한 정보입니다.</div>
											
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
													</div>
													
													
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>

													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>시</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>분</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_gender">
														<input type="hidden" id="nlogin_gender_value" name="c_person">
														<p data-value="choice"><span>남은 좌석</span></p>
														<ul>
															<li><a href="#" data-value="1">1</a></li>
															<li><a href="#" data-value="2">2</a></li>
															<li><a href="#" data-value="3">3</a></li>
															<li><a href="#" data-value="4">4</a></li>
															<li><a href="#" data-value="5">5</a></li>
															<li><a href="#" data-value="6">6</a></li>
														</ul>
													</div>
													
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_date_info">도착일시는 다른 이용자를 위해 꼭 필요한 정보입니다.</div>
												<div class="nlogin_select" id="nlogin_year">
														
												
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														
														<p data-value="choice"><span>년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
													</div>
													
																								<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>

													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>시</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>분</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>

											</td>
										</tr>
										<tr>
											<td colspan="2" class="last">
												<p class="nlogin_date_info">생년월일과 성별은 이메일/비밀번호 분실하였을경우 본인확인을 위해 꼭 필요한 정보입니다.</p>
												<div class="nlogin_form_section">
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>생일 년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_gender">
														<input type="hidden" id="nlogin_gender_value" name="join_sex">
														<p data-value="choice"><span>성별</span></p>
														<ul>
															<li><a href="#" data-value="1">남</a></li>
															<li><a href="#" data-value="2">여</a></li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										</tbody>
									
									</table>
								</div>
								
							</div>

						</div>
						
						</div>
						
						</div>
						
						<div class="nlogin_join_center">
							<button class="nlogin_btn" type="submit">카풀 등록</button>
					    </div>
</form>
</body>
</html>