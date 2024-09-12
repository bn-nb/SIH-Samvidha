import React, { useContext } from "react";
import { NotSignedInSection } from "./components/NotSignedInSection";
import { SignedInComponent } from "./components/SignedInComponents/SignedInComponent";
import { UserContext } from "./context/UserContext";

function App() {
  const UserProfile = null;

  const { user } = useContext(UserContext);

  return <>{user ? <SignedInComponent /> : <NotSignedInSection />}</>;
}

export default App;
