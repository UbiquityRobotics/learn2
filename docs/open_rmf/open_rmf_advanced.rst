Open RMF Advanced Guide
=======================


Overview
########

The Open-RMF web dashboard consists of **React front-end** communicating via **REST APIs** with a **Node.js back-end**, which handles authentication, database access, and all business logic.
**Maps and fleet adapters** provide a shared representation of the environment, allowing the dashboard to **monitor robots in real time**, while **RMF coordinates traffic, tasks, and conflicts** behind the scenes.
**Authentication is centralized through Keycloak**, secrets are stored in environment variables, and all components can be deployed independently across development, testing, and production environments.


API Overview
############

The Open-RMF web dashboard exposes a **RESTful API** that the front-end uses to interact with the system. 
Communication is stateless and uses JSON for requests and responses.
The API acts as a bridge to RMF-managed robots and fleets, giving the dashboard access to higher-level services representing fleets, tasks, and system state without directly controlling individual robots.
In development, the API is available at:

.. code-block:: bash

    http://localhost:3000


Authentication & Authorization
##############################

Authentication is handled entirely by **Keycloak**, which manages user identifies, roles, and token issuance.
The back-end validates Keycloak-issued access tokens sent in the ``Authorization`` header using **OpenID Connect (OIDC)** for each request.
Requests with missing, expired, or invalid tokens receive a **401 Unauthorized** response.
Role-based access control (RBAC) is enforced based on roles defined in Keycloak, and the back-end evaluates role information embedded in the token to determine access permissions.

The back-end also manages application-level sessions.
The **POST /login** endpoint validates a Keycloak-issued token and establishes a session, while **POST /logout** terminates the session on the back-end.
Token revocation and identity management remain the responsibility of Keycloak. 
This separation ensures that authentication and role management are centralized, while the back-end handles secure token validation, session management, and API authorization.




.. TODO: Information about how patrolling, delivery, and the other stuff is implemented, or how a new feature can be implemented should be added to this section.




