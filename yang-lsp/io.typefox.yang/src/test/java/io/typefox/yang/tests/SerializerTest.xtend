package io.typefox.yang.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.serializer.SerializerTestHelper
import org.junit.Test
import org.junit.Assert

class SerializerTest extends AbstractYangTest {
    
    @Inject extension protected SerializerTestHelper
    
    @Test def void testSerializable_XpathBinaryOperation() {
        try {
            '''
            module augtest {
              namespace "ns";
              prefix "at";
              grouping foobar {
                container outer {
                  container inner {
                    leaf foo {
                      type uint8;
                    }
                  }
                }
              }
              rpc agoj {
                input {
                  uses foobar {
                    augment "outer/inner" {
                      when "foo!=42";
                      leaf bar {
                        type string;
                      }
                    }
                  }
                }
              }
            }
            '''.toString.assertSerializeWithNodeModel
        } catch (Throwable t) {
            if (t instanceof RuntimeException) {
                if (t.message.contains('Could not serialize XpathBinaryOperation via backtracking.')) {
                    Assert.fail(t.message)
                }
            }
        }
    }
}