require! <[ assert node-forge ]>

export samples =
  total:  <[ ]>
  root:   <[ root ]>
  ca:     <[ ca ]>
  both:   <[ root ca ]>

counts = {}

# Final check
after !~>

process.on \exit ->
  console.log \Counts:
  console.log counts

# Build Checker if Buffer is valid X509 certificate (and count it)
export function assert509(mocha-test)
  suite = mocha-test .= test
  suite = while suite .= parent
    suite.title.slice 0 1
  suite .= join '' .toLowerCase!
  store = counts[suite] ||= {}
  store[variable = mocha-test.title] ||= 0

  !~>
    assert Buffer.is-buffer it
    # tree = preprocess it
    #   .toString 'binary'
    #   |> nodeForge.asn1.fromDer
    # assert tree.value.length, "Invalid certificate"

    assert ++store[variable] < 1000, "Too many certificates in store"