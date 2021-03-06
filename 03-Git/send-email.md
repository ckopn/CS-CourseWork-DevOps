git send-email [options] <file | directory | rev-list options >
git send-email`--dump-aliases`

  Composing:
   `--from`                  <str>  * Email From:
   `--`[no-]to               <str>  * Email To:
   `--`[no-]cc               <str>  * Email Cc:
   `--`[no-]bcc              <str>  * Email Bcc:
   `--subject`               <str>  * Email "Subject:"
   `--in-reply-to`           <str>  * Email "In-Reply-To:"
   `--`[no-]xmailer                 * Add "X-Mailer:" header (default).
   `--`[no-]annotate                * Review each patch that will be sent in an editor.
   `--compose`                      * Open an editor for introduction.
   `--compose-encoding`      <str>  * Encoding to assume for introduction.
   `--8bit-encoding`         <str>  * Encoding to assume 8bit mails if undeclared
   `--transfer-encoding`     <str>  * Transfer encoding to use (quoted-printable, 8bit, base64)

  Sending:
   `--envelope-sender`       <str>  * Email envelope sender.
   `--smtp-server`       <str:int>  * Outgoing SMTP server to use. The port
                                     is optional. Default 'localhost'.
   `--smtp-server-option`    <str>  * Outgoing SMTP server option to use.
   `--smtp-server-port`      <int>  * Outgoing SMTP server port.
   `--smtp-user`             <str>  * Username for SMTP-AUTH.
   `--smtp-pass`             <str>  * Password for SMTP-AUTH; not necessary.
   `--smtp-encryption`       <str>  * tls or ssl; anything else disables.
   `--smtp-ssl`                     * Deprecated. Use '--smtp-encryption ssl'.
   `--smtp-ssl-cert-path`    <str>  * Path to ca-certificates (either directory or file).
                                     Pass an empty string to disable certificate
                                     verification.
   `--smtp-domain`           <str>  * The domain name sent to HELO/EHLO handshake
   `--smtp-auth`             <str>  * Space-separated list of allowed AUTH mechanisms.
                                     This setting forces to use one of the listed mechanisms.
   `--smtp-debug`            <0|1>  * Disable, enable Net::SMTP debug.

   `--batch-size`            <int>  * send max <int> message per connection.
   `--relogin-delay`         <int>  * delay <int> seconds between two successive login.
                                     This option can only be used with`--batch-size`

  Automating:
   `--identity`              <str>  * Use the sendemail.<id> options.
   `--to-cmd`                <str>  * Email To: via `<str> $patch_path`
   `--cc-cmd`                <str>  * Email Cc: via `<str> $patch_path`
   `--suppress-cc`           <str>  * author, self, sob, cc, cccmd, body, bodycc, all.
   `--`[no-]cc-cover                * Email Cc: addresses in the cover letter.
   `--`[no-]to-cover                * Email To: addresses in the cover letter.
   `--`[no-]signed-off-by-cc        * Send to Signed-off-by: addresses. Default on.
   `--`[no-]suppress-from           * Send to self. Default off.
   `--`[no-]chain-reply-to          * Chain In-Reply-To: fields. Default off.
   `--`[no-]thread                  * Use In-Reply-To: field. Default on.

  Administering:
   `--confirm`               <str>  * Confirm recipients before sending;
                                     auto, cc, compose, always, or never.
   `--quiet`                        * Output one line of info per email.
   `--dry-run`                      * Don't actually send the emails.
   `--`[no-]validate                * Perform patch sanity checks. Default on.
   `--`[no-]format-patch            * understand any non optional arguments as
                                     `git format-patch` ones.
   `--force`                        * Send even if safety checks would prevent it.

  Information:
   `--dump-aliases`                 * Dump configured aliases and exit.

