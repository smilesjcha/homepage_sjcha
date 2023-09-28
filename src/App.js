// src/App.js

import React from 'react';
import { BrowserRouter as Router, Route, Link, Routes } from 'react-router-dom';
import Profile from './pages/Profile';
import ContentShare from './pages/ContentShare';
import Community from './pages/Community';

function App() {
    return (
        <Router>
            <div>
                <nav>
                    <ul>
                        <li><Link to="/">개인 프로필</Link></li>
                        <li><Link to="/content-share">컨텐츠 공유</Link></li>
                        <li><Link to="/community">커뮤니티</Link></li>
                    </ul>
                </nav>

                <Routes>
                    <Route path="/" element={<Profile />} />
                    <Route path="/content-share" element={<ContentShare />} />
                    <Route path="/community" element={<Community />} />
                </Routes>
            </div>
        </Router>
    );
}

export default App;
