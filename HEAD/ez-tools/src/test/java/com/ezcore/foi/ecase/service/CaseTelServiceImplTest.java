//package test.java.com.ezcore.foi.ecase.service;
//
//import com.ezcore.foi.ecase.model.CaseTel01Request;
//import com.ezcore.foi.ecase.dao.dto.CaseTelDetailDTO;
//import com.ezcore.foi.ecase.CaseTelRepository;
//
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.Mock;
//import org.mockito.MockitoAnnotations;
//import static org.mockito.Mockito.*;
//
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.List;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//public class CaseTelServiceImplTest {
//
//    @Mock
//    private CaseTelRepository caseTelRepository;
//
//    private CaseTelServiceImpl caseTelService;
//
//    @BeforeEach
//    public void setUp() {
//        MockitoAnnotations.openMocks(this);
//        caseTelService = new CaseTelServiceImpl(caseTelRepository);
//    }
//
//    @Test
//    public void getCaseTelDetailsTest() {
//        // Given
//        String caseMasterTid = "123";
//        CaseTel01Request caseTelRequest = new CaseTel01Request();
//        caseTelRequest.setCaseMasterTid(caseMasterTid);
//
//        CaseTelDetailDTO caseTelDetailDTO = new CaseTelDetailDTO();
//        caseTelDetailDTO.setCaseTelCheckTid("123");
//        caseTelDetailDTO.setCode("code");
//        caseTelDetailDTO.setX(1);
//        caseTelDetailDTO.setY(2);
//        caseTelDetailDTO.setStyle("style");
//        caseTelDetailDTO.setText("text");
//        caseTelDetailDTO.setValue("value");
//        List<CaseTelDetailDTO> expectedCaseTelDetailsList = Arrays.asList(caseTelDetailDTO);
//
//        when(caseTelRepository.findCaseTelCheckByCaseMasterTid(caseMasterTid)).thenReturn(expectedCaseTelDetailsList);
//
//        // When
//        List<CaseTelDetailDTO> actualCaseTelDetailsList = caseTelService.getCaseTelDetails(caseTelRequest);
//
//        // Then
//        verify(caseTelRepository, times(1)).findCaseTelCheckByCaseMasterTid(caseMasterTid);
//        assertEquals(expectedCaseTelDetailsList, actualCaseTelDetailsList);
//    }
//}
