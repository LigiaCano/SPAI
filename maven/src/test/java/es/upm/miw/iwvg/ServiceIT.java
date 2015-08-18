package es.upm.miw.iwvg;

import static org.junit.Assert.*;

import org.junit.Test;

public class ServiceIT {

    @Test
    public void test() {
        Service service = new Service();
        assertNotNull(service.getValue());
    }

}
