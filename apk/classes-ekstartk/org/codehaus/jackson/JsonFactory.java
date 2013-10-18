package org.codehaus.jackson;

import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;
import org.codehaus.jackson.impl.ByteSourceBootstrapper;
import org.codehaus.jackson.impl.ReaderBasedParser;
import org.codehaus.jackson.impl.WriterBasedGenerator;
import org.codehaus.jackson.io.CharacterEscapes;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.io.InputDecorator;
import org.codehaus.jackson.io.OutputDecorator;
import org.codehaus.jackson.sym.BytesToNameCanonicalizer;
import org.codehaus.jackson.sym.CharsToNameCanonicalizer;
import org.codehaus.jackson.util.BufferRecycler;

public class JsonFactory
{
  static final int DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();
  static final int DEFAULT_PARSER_FEATURE_FLAGS = JsonParser.Feature.collectDefaults();
  protected static final ThreadLocal<SoftReference<BufferRecycler>> _recyclerRef = new ThreadLocal();
  protected CharacterEscapes _characterEscapes;
  protected int _generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
  protected InputDecorator _inputDecorator;
  protected ObjectCodec _objectCodec;
  protected OutputDecorator _outputDecorator;
  protected int _parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
  protected BytesToNameCanonicalizer _rootByteSymbols = BytesToNameCanonicalizer.createRoot();
  protected CharsToNameCanonicalizer _rootCharSymbols = CharsToNameCanonicalizer.createRoot();

  public JsonFactory(ObjectCodec paramObjectCodec)
  {
    this._objectCodec = paramObjectCodec;
  }

  protected IOContext _createContext(Object paramObject, boolean paramBoolean)
  {
    return new IOContext(_getBufferRecycler(), paramObject, paramBoolean);
  }

  protected JsonGenerator _createJsonGenerator(Writer paramWriter, IOContext paramIOContext)
  {
    WriterBasedGenerator localWriterBasedGenerator = new WriterBasedGenerator(paramIOContext, this._generatorFeatures, this._objectCodec, paramWriter);
    if (this._characterEscapes != null)
      localWriterBasedGenerator.setCharacterEscapes(this._characterEscapes);
    return localWriterBasedGenerator;
  }

  protected JsonParser _createJsonParser(InputStream paramInputStream, IOContext paramIOContext)
  {
    return new ByteSourceBootstrapper(paramIOContext, paramInputStream).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols);
  }

  protected JsonParser _createJsonParser(Reader paramReader, IOContext paramIOContext)
  {
    return new ReaderBasedParser(paramIOContext, this._parserFeatures, paramReader, this._objectCodec, this._rootCharSymbols.makeChild(isEnabled(JsonParser.Feature.CANONICALIZE_FIELD_NAMES), isEnabled(JsonParser.Feature.INTERN_FIELD_NAMES)));
  }

  public BufferRecycler _getBufferRecycler()
  {
    SoftReference localSoftReference = (SoftReference)_recyclerRef.get();
    if (localSoftReference == null);
    for (BufferRecycler localBufferRecycler = null; ; localBufferRecycler = (BufferRecycler)localSoftReference.get())
    {
      if (localBufferRecycler == null)
      {
        localBufferRecycler = new BufferRecycler();
        _recyclerRef.set(new SoftReference(localBufferRecycler));
      }
      return localBufferRecycler;
    }
  }

  public JsonGenerator createJsonGenerator(Writer paramWriter)
  {
    IOContext localIOContext = _createContext(paramWriter, false);
    if (this._outputDecorator != null)
      paramWriter = this._outputDecorator.decorate(localIOContext, paramWriter);
    return _createJsonGenerator(paramWriter, localIOContext);
  }

  public JsonParser createJsonParser(InputStream paramInputStream)
  {
    IOContext localIOContext = _createContext(paramInputStream, false);
    if (this._inputDecorator != null)
      paramInputStream = this._inputDecorator.decorate(localIOContext, paramInputStream);
    return _createJsonParser(paramInputStream, localIOContext);
  }

  public JsonParser createJsonParser(String paramString)
  {
    Object localObject = new StringReader(paramString);
    IOContext localIOContext = _createContext(localObject, true);
    if (this._inputDecorator != null)
      localObject = this._inputDecorator.decorate(localIOContext, (Reader)localObject);
    return _createJsonParser((Reader)localObject, localIOContext);
  }

  public final boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return (this._parserFeatures & paramFeature.getMask()) != 0;
  }

  public JsonFactory setCodec(ObjectCodec paramObjectCodec)
  {
    this._objectCodec = paramObjectCodec;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonFactory
 * JD-Core Version:    0.6.2
 */