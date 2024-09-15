import React, { useEffect, useState } from "react";
import { useTranslation } from "react-i18next";
import "../../styles/LanguageSwitcher.css"; // Assuming you will create this CSS file

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();
  const [currentLang, setCurrentLang] = useState("en");

  useEffect(() => {
    const savedLanguage = localStorage.getItem("language") || "en";
    i18n.changeLanguage(savedLanguage);
    setCurrentLang(savedLanguage);
  }, [i18n]);

  const toggleLanguage = () => {
    const newLang = currentLang === "en" ? "hi" : "en";
    i18n.changeLanguage(newLang);
    localStorage.setItem("language", newLang);
    setCurrentLang(newLang);
  };

  return (
    <div className="language-switcher">
      <button className="language-button" onClick={toggleLanguage}>
        Toggle Language
      </button>
    </div>
  );
};

export default LanguageSwitcher;
