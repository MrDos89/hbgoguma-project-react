import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./css/App.css";
// import MainPage from "./pages/mainpage";
import UserInfoPage from "./pages/userInfoPage";
import "./css/userInfoPage.css";
import JoinPage from "./pages/joinPage";
import "./css/joinPage.css";
import LoginPage from "./pages/loginPage";
import "./css/loginPage.css";

import MainPage from "./pages/mainPage";
import ProductDetailPage from "./pages/productDetailPage";
import ProductListPage from "./pages/productListPage";
// import ReviewPage from "./pages/reviewPage";
import SellProductPage from "./pages/sales";

import "./css/productDetailPage.css";
import "./css/productListPage.css";
import "./css/footer.css";

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/salesPage" element={<SellProductPage />} />
        <Route path="/joinPage" element={<JoinPage />} />
        <Route path="/loginPage" element={<LoginPage />} />
        <Route path="/userInfo" element={<UserInfoPage />} />
        <Route path="/detail" element={<ProductDetailPage />} />
        <Route path="/list" element={<ProductListPage />} />
        {/* <Route path="/review" element={<ReviewPage />} /> */}
        <Route path="/" element={<MainPage />} />
      </Routes>
    </Router>
  );
}

export default App;
