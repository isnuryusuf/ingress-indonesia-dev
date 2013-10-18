.class public Lcom/badlogic/gdx/utils/XmlReader$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributes:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private parent:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    .line 442
    iput-object p2, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->parent:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 443
    return-void
.end method

.method private getChildrenByNameRecursively(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    .line 606
    :cond_0
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 603
    iget-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 604
    :cond_2
    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByNameRecursively(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V

    .line 601
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t have attribute or child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 660
    :cond_0
    :goto_0
    return-object p2

    .line 656
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 660
    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t have attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t have attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-object p2

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 465
    goto :goto_0
.end method

.method public getAttributes()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t have attribute or child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    if-nez v0, :cond_0

    .line 708
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public getBooleanAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBooleanAttribute(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    if-nez v0, :cond_0

    .line 638
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 3
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element has no children: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-object v0
.end method

.method public getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 563
    :cond_0
    :goto_0
    return-object v0

    .line 559
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 561
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 563
    goto :goto_0
.end method

.method public getChildByNameRecursive(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 569
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 576
    :cond_0
    :goto_0
    return-object v0

    .line 570
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 572
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByNameRecursive(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 574
    if-nez v0, :cond_0

    .line 570
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 576
    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_0
.end method

.method public getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 588
    :goto_0
    return-object v0

    .line 584
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 586
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 584
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 588
    goto :goto_0
.end method

.method public getChildrenByNameRecursively(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 595
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByNameRecursively(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V

    .line 596
    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3
    .parameter

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t have attribute or child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    if-nez v0, :cond_0

    .line 692
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0
.end method

.method public getFloatAttribute(Ljava/lang/String;)F
    .locals 1
    .parameter

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloatAttribute(Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    if-nez v0, :cond_0

    .line 616
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t have attribute or child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    if-nez v0, :cond_0

    .line 676
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public getIntAttribute(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntAttribute(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    if-nez v0, :cond_0

    .line 627
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->parent:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->parent:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->removeChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 507
    return-void
.end method

.method public removeChild(I)V
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 499
    :cond_0
    return-void
.end method

.method public removeChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 2
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 503
    :cond_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 518
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 519
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 520
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 522
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->attributes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 524
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 525
    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 526
    const-string/jumbo v1, "=\""

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 527
    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 528
    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 532
    :cond_1
    const-string/jumbo v0, "/>"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 552
    :goto_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_2
    const-string/jumbo v0, ">\n"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 537
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 538
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 539
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 543
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 544
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 547
    :cond_4
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 548
    const-string/jumbo v0, "</"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader$Element;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 550
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1
.end method
