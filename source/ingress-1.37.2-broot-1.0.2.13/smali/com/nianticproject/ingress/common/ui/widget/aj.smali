.class final Lcom/nianticproject/ingress/common/ui/widget/aj;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/ah;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/aj;->a:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 100
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/aj;->a:Lcom/nianticproject/ingress/common/ui/widget/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/aj;->a:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/ah;->b(Lcom/nianticproject/ingress/common/ui/widget/ah;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/aj;->a:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/aj;->a:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->b(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/aj;->a:Lcom/nianticproject/ingress/common/ui/widget/ah;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
