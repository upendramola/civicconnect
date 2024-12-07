<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CivicConnect</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f4f7fe;
        color: #2d3436;
    }

    /* Modern Header with new color scheme */
    .header {
        background: linear-gradient(135deg, #6c5ce7 0%, #a363d9 100%);
        padding: 1.5rem;
        text-align: center;
    }

    .header h2 {
        color: white;
        font-size: 2.5rem;
        font-weight: 700;
        letter-spacing: 3px;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        margin-bottom: 0.5rem;
    }

    /* New Modern Navbar Style */
    .navbar {
        background-color: #ffffff;
        padding: 1rem 2rem;
        position: sticky;
        top: 0;
        z-index: 1000;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        display: flex;
        justify-content: center;
        gap: 2rem;
    }

    .navbar a {
        text-decoration: none;
        color: #6c5ce7;
        font-weight: 500;
        padding: 0.8rem 1.5rem;
        border-radius: 25px;
        transition: all 0.3s ease;
        position: relative;
    }

    .navbar a:hover {
        background-color: #6c5ce7;
        color: white;
        transform: translateY(-2px);
    }

    /* Main Content Sections */
    .main-content {
        max-width: 1200px;
        margin: 3rem auto;
        padding: 0 2rem;
    }

    .features {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 2rem;
        margin-top: 3rem;
    }

    .feature-card {
        background: white;
        padding: 2rem;
        border-radius: 15px;
        box-shadow: 0 10px 20px rgba(108, 92, 231, 0.1);
        transition: transform 0.3s ease;
        border-top: 4px solid #6c5ce7;
    }

    .feature-card:hover {
        transform: translateY(-10px);
    }

    .feature-card h3 {
        color: #6c5ce7;
        margin-bottom: 1rem;
        font-size: 1.5rem;
    }

    .feature-card p {
        color: #636e72;
        line-height: 1.6;
    }

    /* Call to Action Section */
    .cta-section {
        background: linear-gradient(135deg, #a363d9 0%, #6c5ce7 100%);
        margin: 4rem auto;
        padding: 3rem;
        border-radius: 15px;
        text-align: center;
        color: white;
        max-width: 900px;
    }

    .cta-section h3 {
        font-size: 2rem;
        margin-bottom: 1rem;
    }

    .cta-button {
        display: inline-block;
        padding: 1rem 2rem;
        background-color: white;
        color: #6c5ce7;
        text-decoration: none;
        border-radius: 25px;
        font-weight: bold;
        margin-top: 1.5rem;
        transition: all 0.3s ease;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .cta-button:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(0,0,0,0.2);
    }

    /* Statistics Section */
    .stats-section {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 2rem;
        margin: 4rem 0;
        text-align: center;
    }

    .stat-card {
        background: white;
        padding: 2rem;
        border-radius: 15px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .stat-number {
        font-size: 2.5rem;
        color: #6c5ce7;
        font-weight: bold;
        margin-bottom: 0.5rem;
    }

    /* Footer */
    .footer {
        background-color: #2d3436;
        color: white;
        text-align: center;
        padding: 2rem;
        margin-top: 4rem;
    }

    @media (max-width: 768px) {
        .header h2 {
            font-size: 2rem;
        }

        .navbar {
            flex-direction: column;
            gap: 1rem;
        }

        .navbar a {
            width: 100%;
            text-align: center;
        }

        .features {
            grid-template-columns: 1fr;
        }
    }
</style>
</head>
<body>
    <div class="header">
        <h2>CivicConnect</h2>
        <p style="color: #fff;">Empowering Democracy Through Digital Connection</p>
    </div>

    <div class="navbar">
        <a href="adminlogin">Admin Login</a>
        <a href="citreg">Citizen Registration</a>
         <a href="citlogin">Citizen Login</a>
         <a href="politicianlogin">Politician Login</a>
    </div>

    <div class="main-content">
        <div class="stats-section">
            <div class="stat-card">
                <div class="stat-number">1000+</div>
                <p>Active Citizens</p>
            </div>
            <div class="stat-card">
                <div class="stat-number">500+</div>
                <p>Representatives</p>
            </div>
            <div class="stat-card">
                <div class="stat-number">5000+</div>
                <p>Issues Resolved</p>
            </div>
        </div>

        <div class="features">
            <div class="feature-card">
                <h3>Digital Democracy</h3>
                <p>Connect directly with your representatives and participate in the democratic process through our digital platform.</p>
            </div>
            <div class="feature-card">
                <h3>Transparent Governance</h3>
                <p>Track the progress of your requests and stay updated with real-time notifications about government initiatives.</p>
            </div>
            <div class="feature-card">
                <h3>Community Engagement</h3>
                <p>Join discussions, participate in polls, and contribute to the development of your constituency.</p>
            </div>
        </div>

        <div class="cta-section">
            <h3>Be Part of the Change</h3>
            <p>Join CivicConnect today and help build a stronger democracy</p>
           
        </div>
    </div>

    <div class="footer">
        <p>© 2024 CivicConnect | Strengthening Democracy Through Technology</p>
    </div>
</body>
</html>