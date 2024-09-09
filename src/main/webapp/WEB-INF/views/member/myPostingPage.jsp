<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
	height: 100%;
	margin: 0; /* 기본 마진 제거 */
	padding: 0; /* 기본 패딩 제거 */
}

#container {
	display: grid;
	grid-template-columns: minmax(192px, 896px) minmax(896px, 1020px)
		minmax(192px, 896px);
	width: 100%;
	height: 100%;
}

#content {
	display: grid;
	grid-template-rows: minmax(100px, 150px) minmax(520px, 2fr)
		minmax(100px, 150px);
	height: 100%;
}

main {
	display: grid;
	grid-template-columns: repeat(12, 1fr);
	grid-column-gap: 20px;
}
</style>
</head>
<body>
	<div id="container">
		<div>좌측 빈 공간</div>
		<div id="content">
			<%@ include file="../common/header.jsp" %>
			<main>
				<div
					style="grid-column: 1/span 2; border-left: 1px solid #B1B1B1; border-right: 1px solid #B1B1B1;">
					<div style="background-color: #9b9b9b; height: 76px; width: 100%"></div>
					<div
						style="background-color: #ffffff; height: 41px; width: 100%; display: flex; align-items: center; justify-content: center; border-bottom: 1px solid #c7c7c7;">
						<a href="#"
							style="text-decoration: none; color: #2c2c2c; font-size: 15px">나의
							정보</a>
					</div>
					<div
						style="background-color: #2c2c2c; height: 41px; width: 100%; display: flex; align-items: center; justify-content: center; border-bottom: 1px solid #c7c7c7;">
						<a href="#"
							style="text-decoration: none; color: #ffffff; font-size: 15px">나의
							경매 목록</a>
					</div>
					<div
						style="background-color: #ffffff; height: 41px; width: 100%; display: flex; align-items: center; justify-content: center; border-bottom: 1px solid #c7c7c7;">
						<a href="#"
							style="text-decoration: none; color: #2c2c2c; font-size: 15px">나의
							입찰 목록</a>
					</div>
				</div>

				<div style="grid-column: 4/span 8">
					<div
						style="height: 108px; width: 100%; display: flex; align-items: flex-end;">
						<text
							style="margin-bottom: 10px; font-size: 18px; font-weight: 800">나의
						경매 목록<text>
					</div>
					<div
						style="width: 100%; border: 1px solid #b1b1b1; display: grid; grid-template-columns: repeat(12, 1fr); grid-gap: 10px">
						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 1/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>

						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 5/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>

						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 9/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>

						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 1/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>

						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 5/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>

						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 9/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>

						<button
							style="height: 316px; display: block; border: 0; cursor: pointer; padding: 0; margin: 0; background-color: white; grid-column: 1/span 4;">
							<div
								style="width: 100%; height: 55%; background-image: url('resources/images/디올빈티지펜던트_50만원.png'); background-size: cover; background-position: center;"></div>
							<div
								style="width: 100%; height: 45%; border-bottom: 2px solid #ffcccc; border-left: 2px solid #ffcccc; border-right: 2px solid #ffcccc; box-sizing: border-box;">
								<table style="width: 100%; height: 100%;">
									<tr>
										<td colspan="2" style="text-align: left; font-size: 15px">
											디올 빈티지 펜던트</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											현재가</td>
										<td
											style="text-align: right; font-size: 12px; font-weight: 900">
											500,000원</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											입찰자수</td>
										<td style="text-align: right; font-size: 12px">23명</td>
									</tr>
									<tr>
										<td style="text-align: left; color: #949494; font-size: 12px">
											경매기간</td>
										<td style="text-align: right; font-size: 12px">2024-03-21</td>
									</tr>
								</table>
							</div>
						</button>


					</div>
				</div>
			</main>
			<%@ include file="../common/footer.jsp" %>
		</div>
		<div>우측 빈 공간</div>
	</div>
</body>
</html>