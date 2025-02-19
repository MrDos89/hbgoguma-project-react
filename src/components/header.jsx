import React from "react";
import "../css/header.css";

const Header = () => {
  const handleNavigation = (path) => {
    window.location.href = path;
  };

  return (
    <header className="header">
      <div className="header-container">
        {/* 중앙: 로고 */}
        <h1 className="header-logo" onClick={() => handleNavigation("/")}>
          호박고구마
        </h1>

        {/* 오른쪽: 회원가입 & 로그인 버튼 */}
        <div className="header-buttons">
          <button
            className="header-btn"
            onClick={() => handleNavigation("/joinPage")}
          >
            회원가입
          </button>
          <button
            className="header-btn"
            onClick={() => handleNavigation("/loginPage")}
          >
            로그인
          </button>
        </div>
      </div>
    </header>
  );
};

export default Header;
