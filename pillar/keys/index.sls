{# To decrypt:
    gpg --import 03A8891A765AD085.gpg
    gpg --decrypt saltkeys.tgz.gpg -o saltkeys.tgz #}

keys:

  03A8891A765AD085.{key,pub}:
    prv: 03A8891A765AD085
    pub: B1C2B4FD5E3AD929
    owner: Michael Lustfield <michael@lustfield.net>
    purpose: Michael Lustfield (personal); Glacier uploads

  AE6FBE3B8BA35B79.pub:
    prv: AE6FBE3B8BA35B79
    pub: D45F2AB7AF5E2BF8
    owner: Salt Master <root@salt.lustfield.net>
    purpose: Encrypted pillar data

  CA8E12CE9AB393E3.key:
    located: files:snapkeys.tgz.gpg
    prv: CA8E12CE9AB393E3
    pub: 191DDB4C0A687B58
    owner: Snap Archives <root@snap.lustfield.net>
    purpose: Old key; backup encryption; expired 8/30/2016


files:

  saltkeys.tgz.gpg:
    encrypted_with: keys:03A8891A765AD085.gpg:pub
    contains: [...]
    private_key_included: True

  snapkeys.tgz.gpg:
    encrypted_with: keys:03A8891A765AD085.gpg:pub
    contains: Old keys used to encrypt data uploaded to glacier
    private_key_included: True
