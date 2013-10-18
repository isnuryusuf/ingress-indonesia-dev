.class public Lcom/nianticproject/ingress/shared/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/Result;->result:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/Result;->error:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/Result;->result:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/Result;->error:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/shared/Result;

    invoke-direct {v0, v1, v1}, Lcom/nianticproject/ingress/shared/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/nianticproject/ingress/shared/Result",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/shared/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/shared/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/nianticproject/ingress/shared/Result",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/shared/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/nianticproject/ingress/shared/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/nianticproject/ingress/shared/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<TW;TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 57
    return-object p0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/Result;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/Result;->error:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/Result;->error:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/Result;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/Result;->error:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/Result;->error:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
