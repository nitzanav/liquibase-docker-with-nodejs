## What is this fork about
Add node.js/npm as part of this docker image
The goal is to enable defining `executeCommand` of `liquibase`.
Example:
```xml
    <changeSet id="1.0" author="nitzanav">
        <executeCommand executable="npm">
            <arg value="--prefix=/opt/migration/nodejs_project_x"/>
            <arg value="importSeedData"/>
        </executeCommand>
    </changeSet>
```
