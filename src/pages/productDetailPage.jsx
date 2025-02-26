import React, { useState, useEffect } from "react";
import "../css/productDetailPage.css";
import UserNegoChat from "../components/userNegoChat.jsx"; // 채팅 컴포넌트 임포트
import Footer from "../components/footer";
import Header from "../components/header";
import Advertise from "../components/advertise";
import { MdOutlineBackspace } from "react-icons/md"; // 뒤로가기
import { useNavigate } from "react-router-dom"; // useNavigate 임포트
import { useParams } from "react-router-dom";
import ReportUser from "../components/reportUser.jsx";

const ProductDetailPage = () => {
  const { postId } = useParams(); // URL에서 ID 가져오기
  const [newPost, setNewPost] = useState([]); // 변경된 상품 데이터 저장
  const [user, setUser] = useState([]); //  login 부분
  const [isLoggedIn, setIsLoggedIn] = useState(false); // 로그인 여부
  const [relatedPostList, SetRelatedPostList] = useState([]);

  // 카테고리와 지역 처리
  const PostCategory = {
    0: "디지털기기",
    1: "가구/인테리어",
    2: "유아동",
    3: "의류",
    4: "잡화",
    5: "생활가전",
    6: "생활/주방",
    7: "스포츠/레저",
    8: "취미/게임/음반",
    9: "뷰티/미용",
    10: "식물",
    11: "식품",
    12: "반려동물",
    13: "티켓/교환권",
    14: "도서",
    15: "기타",
  };

  const Gu = {
    0: "강남구",
    1: "서초구",
  };

  const Dong = {
    0: "개포1동",
    1: "개포2동",
    2: "개포3동",
    3: "개포4동",
    4: "논현1동",
    5: "논현2동",
    6: "대치1동",
    7: "대치2동",
    8: "대치4동",
    9: "도곡1동",
    10: "도곡2동",
    11: "삼성1동",
    12: "삼성2동",
    13: "세곡동",
    14: "수서동",
    15: "신사동",
    16: "압구정동",
    17: "역삼1동",
    18: "역삼2동",
    19: "일원1동",
    20: "일원본동",
    21: "청담동",
    22: "내곡동",
    23: "반포1동",
    24: "반포2동",
    25: "반포3동",
    26: "반포4동",
    27: "반포본동",
    28: "방배1동",
    29: "방배2동",
    30: "방배3동",
    31: "방배4동",
    32: "방배본동",
    33: "서초1동",
    34: "서초2동",
    35: "서초3동",
    36: "서초4동",
    37: "양재1동",
    38: "양재2동",
    39: "잠원동",
  };

  // 로그인 상태 확인 함수
  const checkLoginStatus = async () => {
    try {
      const response = await fetch(
        "http://localhost:18090/api/gogumauser/session",
        {
          method: "GET",
          credentials: "include", // 쿠키를 포함하여 요청
        }
      );

      if (response.ok) {
        const data = await response.json();
        setIsLoggedIn(true);
        setUser(data); // 로그인된 사용자 정보 저장
      } else {
        setIsLoggedIn(false);
      }
    } catch (error) {
      console.error("로그인 상태 확인 중 오류 발생:", error);
      setIsLoggedIn(false);
    }
  };

  useEffect(() => {
    checkLoginStatus(); // 컴포넌트가 마운트될 때 로그인 상태 확인
  }, []);


  //  상세 페이지, 추천 리스트 받아오기
  useEffect(() => {
    const API_POST_URL = `http://localhost:18090/api/gogumapost/${postId}`;
  
    fetch(API_POST_URL)
      .then((response) => response.json())
      .then((data) => {
        console.log("🔍 응답 데이터 확인:", data);
  
        // 날짜 + 시간 변환 (YYYY-MM-DD HH:MM:SS 형식)
        const formattedDateTime = data.upd_date
          ? new Date(data.upd_date)
              .toISOString()
              .replace("T", " ")
              .substring(0, 19)
          : "날짜 없음";
  
        // 100점 만점 환산 (소수점 1자리까지)
        const convertedUserRate100 = data.user_rate
          ? ((data.user_rate / 10000) * 100).toFixed(1)
          : "평점 없음";
  
        const postData = {
          id: data.pid,
          sellerUid: data.uid,
          selectedUser: data.selected_user,
          regionGu: data.loca_gu,
          regionDong: data.loca_dong,
          title: data.post_title,
          image: data.post_photo,
          content: data.post_content,
          category: data.post_category,
          price: data.post_price || "가격 미정",
          userList: data.user_list,
          reportCnt: data.report_cnt,
          updateTime: formattedDateTime,
          seller: data.nickname,
          thumbnail: data.thumbnail,
          userRate: convertedUserRate100,
        };
        setNewPost(postData);
  
        // postId가 존재하는지 확인
        if (data.pid) {
          console.log("추천 상품 리스트를 요청하는 pid:", data.pid);
          relatedProduct(data.pid); // 정상적으로 pid 값을 넘겨주기
          console.log("정상적으로 넘겨준 pid:", data.pid);
        } else {
          console.error("추천 상품 리스트를 요청할 수 없습니다. pid가 없습니다.");
        }
      })
      .catch((error) => {
        console.error("데이터 불러오기 실패:", error);
      });
  }, []); 
  
  const relatedProduct = async (pid) => {
    try {
      if (!pid) {
        console.error("추천 상품을 불러올 수 없습니다. 유효한 pid가 아닙니다.");
        return;
      }
  
      const apiUrl = `http://localhost:18090/api/gogumapost/${pid}/related`;
      console.log("추천 상품 요청 URL:", apiUrl); // URL 확인
  
      const response = await fetch(apiUrl, {
        method: "GET",
        credentials: "include",
      });
  
      if (response.ok) {
        const data = await response.json();
        console.log("받아온 추천 리스트:", data);
        SetRelatedPostList(
          data.map((item) => ({
            id: item.pid,
            regionDong: item.loca_dong,
            title: item.post_title,
            image: item.post_photo,
            price: item.post_price || "가격 미정",
          }))
        );
      } else {
        console.error("추천 리스트를 받아오지 못했습니다.");
        const errorText = await response.text();
        console.error("서버 응답 내용:", errorText); // 서버에서 반환한 오류 메시지
      }
    } catch (error) {
      console.error("추천 리스트 받아오던 중 오류 발생:", error);
    }
  };

    // 뒤로가기 버튼
    const navigate = useNavigate(); // useNavigate 훅 사용

    const onBack = () => {
      navigate("/list"); // 리스트 페이지로 이동
    };

    // 판매자 평점 -> 매너 사이다
    const getCiderColor = (score) => {
      if (score < 30) return "#F97316"; // 주황
      if (score < 60) return "#A3E635"; // 라임 그린
      if (score < 90) return "#4BC0C8"; // 청록
      return "#0350e0"; //  블루
    };

    return (
      <>
        <Header />
        <Advertise />

        <div className="detail-product-detail">
          {/* 뒤로가기 버튼을 상단에 위치시킴 */}
          <button onClick={onBack} className="detail-back-button">
            <MdOutlineBackspace />
          </button>

          {/* 상품 이미지와 내용 (왼쪽, 오른쪽 분리된 부분) */}
          <div className="detail-product-body">
            <div className="detail-product-left">
              <img
                src={newPost.image}
                alt={newPost.title}
                className="detail-product-image"
              />

              <div className="detail-seller-info">
                <div className="detail-seller-left">
                  <img src={newPost.thumbnail} alt="판매자 이미지" />
                  <div>
                    <p className="detail-nickname">{newPost.seller}</p>
                    <p className="detail-location">
                      {Gu[newPost.regionGu]}, {Dong[newPost.regionDong]}
                    </p>
                  </div>
                  <ReportUser postId={postId} userId={user.uid} />
                </div>
                <div className="detail-seller-right">
                  <div className="detail-cider-container">
                    <div
                      className="detail-cider-liquid"
                      style={{
                        height: `${newPost.userRate}%`, // 100점 만점 기준으로 점수 적용
                        backgroundColor: getCiderColor(newPost.userRate), // 색상 변경
                      }}
                    />
                    <div className="detail-cider-label">
                      {newPost.userRate}L
                    </div>{" "}
                  </div>
                  {/* <p>{newPost.userRate}</p> */}
                </div>
              </div>
            </div>

            <div className="detail-product-right">
              <h2 className="detail-product-title">{newPost.title}</h2>

              {/* 카테고리와 날짜 추가 */}
              <p className="detail-product-category">
                {PostCategory[newPost.category]} | {newPost.updateTime}
              </p>

              <p className="detail-product-price">
                {newPost && newPost.price
                  ? newPost.price.toLocaleString() + "원"
                  : "가격 미정"}
              </p>

            <p className="detail-product-description">{newPost.content}</p>
            {isLoggedIn && user.uid !== newPost.sellerUid && (
              <UserNegoChat
                sellerUid={newPost.sellerUid}
                user_id={user.uid}
                post={newPost}
              />
            )}
          </div>
        </div>
        <div className="detail-related-products">
          <h3>이런 상품은 어떠세요?</h3>
          <div className="detail-related-list">
            {relatedPostList.length > 0 ? (
              relatedPostList.map((item) => (
                <div key={item.id} className="detail-related-item">
                  <img
                    src={item.image}
                    alt="상품 이미지"
                    className="detail-related-image"
                  />
                  <p className="detail-related-title">{item.title}</p>
                  <p className="detail-related-price">
                    {item.price.toLocaleString()}원
                  </p>
                  <p className="detail-related-location">{Dong[item.regionDong]}</p>
                </div>
              ))
            ) : (
              <p>추천 상품이 없습니다.</p>
            )}
          </div>
        </div>
        </div>
        <Footer />
      </>
    );
  };


export default ProductDetailPage;
