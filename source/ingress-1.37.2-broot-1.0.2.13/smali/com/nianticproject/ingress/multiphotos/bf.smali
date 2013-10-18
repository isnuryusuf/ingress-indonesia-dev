.class final Lcom/nianticproject/ingress/multiphotos/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7f080061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/bf;->a:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/nianticproject/ingress/multiphotos/bf;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/multiphotos/bf;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/bf;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/multiphotos/bf;-><init>(Landroid/view/View;)V

    .line 47
    :cond_0
    return-object v0
.end method
