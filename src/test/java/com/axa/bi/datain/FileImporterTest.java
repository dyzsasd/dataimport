package com.axa.bi.datain;

public class FileImporterTest {

//    private final Path hdpTest = new Path("test");
//    private final Path data = new Path("data");
//    private File test = new File("test");
//    private FileSystem fileSystem;
//
//    private FileImporter fileImporter;
//
//    @Before
//    public void setUp() throws Exception {
//        String booksJson = "test data";
//        Files.write(booksJson, test, Charsets.UTF_8);
//        fileSystem = FileSystem.getLocal(new Configuration()).getRawFileSystem();
//        fileImporter = new FileImporter(fileSystem, Partition.FULL, "UTF-8", new ArrayList<LineFilter>(), ";",
//                new ArrayList<DelimitedTextTransformation>());
//    }
//
//    @After
//    public void tearDown() throws Exception {
//        fileSystem.delete(hdpTest, false);
//        fileSystem.delete(data, true);
//    }
//
//    @Test
//    public void testImportFile() throws Exception {
//        DateTime dateTime = new DateTime("2014-01-01");
//        fileImporter.importFile(hdpTest, new Path("data"), dateTime);
//        assertThat(new File("data/yyyy=2014/mm=01/dd=01/hhmmss=000000/part-m-00000")).exists().hasContentEqualTo
// (test);
//    }
}