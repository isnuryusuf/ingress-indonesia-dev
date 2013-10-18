.class public Lorg/codehaus/jackson/JsonFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

.field protected _parserFeatures:I

.field protected _rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 71
    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->createRoot()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 101
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->createRoot()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 121
    sget v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 126
    sget v0, Lorg/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 171
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-void
.end method


# virtual methods
.method protected _createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 894
    new-instance v0, Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/io/IOContext;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 845
    new-instance v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;-><init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V

    .line 846
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonGenerator;

    .line 849
    :cond_0
    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 785
    new-instance v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p2, p1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V

    iget v1, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lorg/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 802
    new-instance v0, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    iget v2, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method

.method public _getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;
    .locals 3

    .prologue
    .line 905
    sget-object v0, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 906
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 908
    :goto_0
    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/BufferRecycler;-><init>()V

    .line 910
    sget-object v1, Lorg/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 912
    :cond_0
    return-object v0

    .line 906
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/util/BufferRecycler;

    goto :goto_0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 2
    .parameter

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_outputDecorator:Lorg/codehaus/jackson/io/OutputDecorator;

    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/io/OutputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .parameter

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 561
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 3
    .parameter

    .prologue
    .line 636
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 638
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lorg/codehaus/jackson/io/IOContext;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lorg/codehaus/jackson/JsonFactory;->_inputDecorator:Lorg/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v2, v1, v0}, Lorg/codehaus/jackson/io/InputDecorator;->decorate(Lorg/codehaus/jackson/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 643
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lorg/codehaus/jackson/io/IOContext;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .parameter

    .prologue
    .line 276
    iget v0, p0, Lorg/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonFactory;
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lorg/codehaus/jackson/JsonFactory;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 476
    return-object p0
.end method
