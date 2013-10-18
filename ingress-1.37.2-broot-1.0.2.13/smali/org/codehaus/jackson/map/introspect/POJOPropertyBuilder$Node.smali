.class final Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final explicitName:Ljava/lang/String;

.field public final isMarkedIgnored:Z

.field public final isVisible:Z

.field public final next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    .line 545
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 547
    if-nez p3, :cond_0

    move-object p3, v0

    move-object v0, p0

    .line 550
    :goto_0
    iput-object p3, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    .line 552
    iput-boolean p4, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    .line 553
    iput-boolean p5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    .line 554
    return-void

    .line 550
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p3, v0

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    return-object v0
.end method

.method private append(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_0
    return-object v0
.end method

.method public final trimByVisibility()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 605
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-object p0

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 611
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object p0, v0

    .line 617
    goto :goto_0

    .line 620
    :cond_3
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v2, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-ne v1, v2, :cond_4

    .line 621
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    goto :goto_0

    .line 623
    :cond_4
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    goto :goto_0

    :cond_5
    move-object p0, v0

    goto :goto_0
.end method

.method public final withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-ne p1, v0, :cond_0

    .line 568
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 561
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final withoutIgnored()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 573
    :goto_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 582
    :cond_0
    :goto_1
    return-object p0

    .line 574
    :cond_1
    iget-object p0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 576
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eq v0, v1, :cond_0

    .line 579
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    goto :goto_1
.end method

.method public final withoutNonVisible()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 588
    :goto_0
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    :cond_0
    return-object v0

    .line 587
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0
.end method
