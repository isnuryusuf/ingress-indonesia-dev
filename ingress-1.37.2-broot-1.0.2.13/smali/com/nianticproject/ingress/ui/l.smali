.class final Lcom/nianticproject/ingress/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nianticproject/ingress/ui/CommHandle;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ui/CommHandle;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    iput p2, p0, Lcom/nianticproject/ingress/ui/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    iget v1, p0, Lcom/nianticproject/ingress/ui/l;->a:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/CommHandle;->a(Lcom/nianticproject/ingress/ui/CommHandle;I)I

    .line 198
    iget v0, p0, Lcom/nianticproject/ingress/ui/l;->a:I

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CommHandle;->a(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 199
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CommHandle;->b(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CommHandle;->c(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CommHandle;->d(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/l;->b:Lcom/nianticproject/ingress/ui/CommHandle;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/CommHandle;->invalidate()V

    .line 204
    return-void
.end method
