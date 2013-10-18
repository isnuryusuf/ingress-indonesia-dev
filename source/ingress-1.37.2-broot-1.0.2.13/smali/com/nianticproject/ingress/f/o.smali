.class final Lcom/nianticproject/ingress/f/o;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/f/k;

.field private b:[I

.field private c:[I

.field private final d:Landroid/widget/Filter;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/f/k;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/f/o;->a:Lcom/nianticproject/ingress/f/k;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/f/p;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/f/p;-><init>(Lcom/nianticproject/ingress/f/o;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/f/o;->d:Landroid/widget/Filter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/f/k;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/f/o;-><init>(Lcom/nianticproject/ingress/f/k;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/f/o;)[I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/f/o;->b:[I

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/f/o;[I)[I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/f/o;->b:[I

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/f/o;[I)[I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/f/o;->c:[I

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/f/o;->c:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/f/o;->c:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/f/o;->d:Landroid/widget/Filter;

    return-object v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/f/o;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/k;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/f/o;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 98
    if-eqz p2, :cond_0

    .line 105
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/d;

    .line 106
    iget-object v1, p0, Lcom/nianticproject/ingress/f/o;->a:Lcom/nianticproject/ingress/f/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/f/o;->c:[I

    aget v2, v2, p1

    invoke-static {v1, v0, v2}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/k;Lcom/nianticproject/ingress/f/d;I)V

    .line 107
    iget-object v1, v0, Lcom/nianticproject/ingress/f/d;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v1, v0, Lcom/nianticproject/ingress/f/d;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, v0, Lcom/nianticproject/ingress/f/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    return-object p2

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/f/o;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->b(Lcom/nianticproject/ingress/f/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v0, Lcom/nianticproject/ingress/f/d;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/f/d;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
