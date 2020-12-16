import jenkins.model.*
import hudson.security.*

def instance = Jenkins.getInstance()

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount("demo", "demo123")
instance.setSecurityRealm(hudsonRealm)
instance.save()
