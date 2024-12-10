<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search for Professionals</title>
    <style>
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .results {
            margin-top: 20px;
        }
        .profile {
            display: none;
            margin-top: 20px;
            border-top: 1px solid #ccc;
            padding-top: 10px;
        }
        .profile h3 {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Search for Professionals by Skill</h2>
        <input type="text" id="skillInput" placeholder="Enter a skill (e.g., Java, Python)" oninput="searchProfessionals()" style="width: 100%; padding: 8px; margin-bottom: 10px;">
        
        <div class="results" id="results"></div>

        <div class="profile" id="profile">
            <h3 id="profName"></h3>
            <p id="profDetails"></p>
        </div>
    </div>

    <script>
        // Sample data for professionals
        const professionals = [
            { name: 'John Doe', skills: ['Java', 'Spring Boot'], details: 'Senior Java Developer with 10 years of experience.' },
            { name: 'Jane Smith', skills: ['Python', 'Machine Learning'], details: 'Python Developer with a focus on machine learning projects.' },
            { name: 'Mike Johnson', skills: ['JavaScript', 'React'], details: 'Frontend Developer specializing in React.js.' },
            { name: 'Emily Davis', skills: ['Java', 'Hibernate'], details: 'Java Developer with expertise in Hibernate and ORM frameworks.' }
        ];

        function searchProfessionals() {
            const input = document.getElementById('skillInput').value.toLowerCase();
            const resultsDiv = document.getElementById('results');
            const profileDiv = document.getElementById('profile');
            profileDiv.style.display = 'none';
            resultsDiv.innerHTML = '';

            if (input) {
                const filteredProfessionals = professionals.filter(prof => 
                    prof.skills.some(skill => skill.toLowerCase().includes(input))
                );

                if (filteredProfessionals.length > 0) {
                    filteredProfessionals.forEach((prof, index) => {
                        const button = document.createElement('button');
                        button.textContent = prof.name;
                        button.onclick = () => showProfile(prof);
                        resultsDiv.appendChild(button);
                        resultsDiv.appendChild(document.createElement('br'));
                    });
                } else {
                    resultsDiv.textContent = 'No professionals found for this skill.';
                }
            }
        }

        function showProfile(professional) {
            document.getElementById('profName').textContent = professional.name;
            document.getElementById('profDetails').textContent = professional.details;
            document.getElementById('profile').style.display = 'block';
        }
    </script>
</body>
</html>
