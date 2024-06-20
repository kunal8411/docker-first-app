<h1 align="center">Docker Project: Simple Node.js Server</h1>
<h3 align="left">This project demonstrates how to create and run a simple Node.js server using Docker. It serves as an introduction to Docker and containerizing Node.js applications.</h3>
<h2 align="left">Getting Started</h2>
<h3 align="left">Prerequisites</h3>
<ul>
  <li>Docker installed on your machine. You can download and install Docker from <a href="https://www.docker.com/products/docker-desktop">here</a>.</li>
</ul>
<h3 align="left">Project Structure</h3>
<ul>
  <li><b>Dockerfile</b>: Defines the Docker image for the Node.js application.</li>
  <li><b>index.js</b>: The main application code that sets up an Express server.</li>
  <li><b>package.json</b>: Lists the dependencies for the Node.js application.</li>
</ul>
<h2 align="left">Building the Docker Image</h2>
<p>To build the Docker image for this project, navigate to the directory containing the Dockerfile and run the following command:</p>
<pre><code>docker build -t node-express-app .</code></pre>
<h3 align="left">Explanation:</h3>
<ul>
  <li><b>docker build</b>: This command builds a Docker image from a Dockerfile.</li>
  <li><b>-t node-express-app</b>: The <code>-t</code> flag tags the image with a name. In this case, we are tagging the image with the name <code>node-express-app</code>. Tagging helps in identifying and managing images. Instead of using an image ID, we give it a readable name which is easier to work with.</li>
</ul>
<h2 align="left">Running the Docker Container</h2>
<p>Once the image is built, you can run it using the following command:</p>
<pre><code>docker run -p 8080:8080 node-express-app</code></pre>
<h3 align="left">Explanation:</h3>
<ul>
  <li><b>docker run</b>: This command runs a container from a specified Docker image.</li>
  <li><b>-p 8080:8080</b>: The <code>-p</code> flag maps a port on your local machine to a port inside the Docker container. Here, port 8080 on your local machine is mapped to port 8080 inside the container. This allows you to access the application running in the Docker container via <code>http://localhost:8080</code>.</li>
  <li><b>node-express-app</b>: This is the name of the Docker image to run. Since we tagged our image as <code>node-express-app</code>, we use this name to run the container.</li>
</ul>
<h2 align="left">Accessing the Application</h2>
<p>After running the container, open a web browser and navigate to <code>http://localhost:8080</code>. You should see the message "Hello there", indicating that the server is running successfully.</p>
<h2 align="left">Summary</h2>
<ul>
  <li><b>docker build -t node-express-app .</b>: Builds the Docker image and tags it as <code>node-express-app</code>.</li>
  <li><b>docker run -p 8080:8080 node-express-app</b>: Runs a container from the <code>node-express-app</code> image and maps port 8080 on your local machine to port 8080 inside the container.</li>
</ul>
<p>Feel free to modify the application code and Docker configuration to suit your needs. Happy coding!</p>
