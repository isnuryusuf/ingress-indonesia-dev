.class final Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _symbol:Ljava/lang/String;

.field private final mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 525
    iput-object p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 526
    return-void
.end method


# virtual methods
.method public final find([CII)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iget-object v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 536
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_2

    .line 537
    const/4 v2, 0x0

    .line 539
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_1

    .line 540
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_0

    .line 543
    :cond_1
    if-ne v2, p3, :cond_2

    .line 553
    :goto_1
    return-object v1

    .line 547
    :cond_2
    if-eqz v0, :cond_3

    .line 548
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    return-object v0
.end method
