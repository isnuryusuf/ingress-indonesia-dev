.class final Lcom/nianticproject/ingress/ag;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/nianticproject/ingress/ag;->a:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/nianticproject/ingress/common/g/a;->a()Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ag;->b:Lcom/google/a/c/dc;

    .line 76
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/ag;->b:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/ag;->b:Lcom/google/a/c/dc;

    invoke-virtual {v0}, Lcom/google/a/c/dc;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ah;

    .line 106
    :goto_0
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ah;->a(Ljava/lang/String;)V

    .line 107
    return-object p2

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v0, Lcom/nianticproject/ingress/ah;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/ah;-><init>(Landroid/view/View;)V

    .line 103
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
