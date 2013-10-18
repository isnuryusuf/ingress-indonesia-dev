.class final Lcom/nianticproject/ingress/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/bn;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/nianticproject/ingress/dw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/dw;Lcom/nianticproject/ingress/common/c/bn;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nianticproject/ingress/dy;->d:Lcom/nianticproject/ingress/dw;

    iput-object p2, p0, Lcom/nianticproject/ingress/dy;->a:Lcom/nianticproject/ingress/common/c/bn;

    iput p3, p0, Lcom/nianticproject/ingress/dy;->b:I

    iput p4, p0, Lcom/nianticproject/ingress/dy;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/dy;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->name()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/nianticproject/ingress/dy;->d:Lcom/nianticproject/ingress/dw;

    invoke-static {v1}, Lcom/nianticproject/ingress/dw;->a(Lcom/nianticproject/ingress/dw;)Lcom/nianticproject/ingress/dv;

    move-result-object v1

    .line 172
    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/nianticproject/ingress/dy;->d:Lcom/nianticproject/ingress/dw;

    invoke-static {v1}, Lcom/nianticproject/ingress/dw;->b(Lcom/nianticproject/ingress/dw;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "[%d] %s (too many!)"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/nianticproject/ingress/dy;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {v1}, Lcom/nianticproject/ingress/dv;->a()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/nianticproject/ingress/dy;->c:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    iget-object v2, p0, Lcom/nianticproject/ingress/dy;->d:Lcom/nianticproject/ingress/dw;

    invoke-static {v2}, Lcom/nianticproject/ingress/dw;->b(Lcom/nianticproject/ingress/dw;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "[%d] %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/nianticproject/ingress/dy;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/dy;->d:Lcom/nianticproject/ingress/dw;

    invoke-static {v0}, Lcom/nianticproject/ingress/dw;->c(Lcom/nianticproject/ingress/dw;)Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/dy;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 179
    invoke-virtual {v1}, Lcom/nianticproject/ingress/dv;->a()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/dz;

    invoke-direct {v3, p0, v1}, Lcom/nianticproject/ingress/dz;-><init>(Lcom/nianticproject/ingress/dy;Lcom/nianticproject/ingress/dv;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/dy;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
