package tarea8;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class Transformacion {
	public void transformar() {
		String xsl = "alumno-xsl.xsl";
		String xml = "alumnosEtiquetas.xml";
		File html = new File("misAlumunos.html");

		try {
			FileOutputStream os = new FileOutputStream(html);

			Source estilos = new StreamSource(xsl);
			Source datos = new StreamSource(xml);

			Result result = new StreamResult(os);

			Transformer transformer = TransformerFactory.newInstance().newTransformer(estilos);

			transformer.transform(datos, result);
			
			os.close();
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (TransformerConfigurationException e) {
			System.out.println(e.getMessage());
		} catch (TransformerFactoryConfigurationError e) {
			System.out.println(e.getMessage());
		} catch (TransformerException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}
}