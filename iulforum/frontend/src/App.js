import './App.css';
import { Routes, Route} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import Navbar from './components/navbar/TopNavbar';
import Home from './pages/home/Home';
import Blog from './pages/blog/Blog';
import Notes from './pages/notes/Notes';
import Paper from './pages/paper/Paper';
import IulApp from './pages/IulApp/index';
import Footer from './components/footer/Footer';


function App() {
  return (
    <div className="App">
     <Navbar/>
     <Routes>
        <Route path="/" element={<Home />} />
        <Route path="blog" element={<Blog />} />
        <Route path="notes" element={<Notes />} />
        <Route path="paper" element={<Paper />} />
        <Route path="iul-app" element={<IulApp />} />
      </Routes>
      <Footer/>     
    </div>
  );
}

export default App;
