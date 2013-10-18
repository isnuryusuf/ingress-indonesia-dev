.class final Lcom/nianticproject/ingress/content/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/content/NemesisProvider;

.field private final b:Ljava/lang/StringBuilder;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/content/NemesisProvider;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/nianticproject/ingress/content/h;->a:Lcom/nianticproject/ingress/content/NemesisProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    .line 692
    if-nez p3, :cond_1

    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/nianticproject/ingress/content/h;->c:Ljava/util/List;

    .line 694
    return-void

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_1
    invoke-static {p3}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    return-void
.end method

.method public final b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/content/h;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/nianticproject/ingress/content/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 718
    const-string/jumbo v0, "selection=%s selectionArgs=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/h;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/h;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nianticproject/ingress/content/NemesisProvider;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
