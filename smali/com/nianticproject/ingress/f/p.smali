.class final Lcom/nianticproject/ingress/f/p;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/f/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/f/o;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    iget-object v0, v0, Lcom/nianticproject/ingress/f/o;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    iget-object v0, v0, Lcom/nianticproject/ingress/f/o;->a:Lcom/nianticproject/ingress/f/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/a;

    .line 58
    invoke-virtual {v0}, Lcom/nianticproject/ingress/f/a;->a()Lcom/nianticproject/ingress/f/b;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/f/b;->a:Lcom/nianticproject/ingress/f/b;

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v0, Lcom/nianticproject/ingress/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/f/o;->a(Lcom/nianticproject/ingress/f/o;[I)[I

    .line 65
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    invoke-static {v0}, Lcom/nianticproject/ingress/f/o;->a(Lcom/nianticproject/ingress/f/o;)[I

    move-result-object v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    iget-object v1, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    invoke-static {v1}, Lcom/nianticproject/ingress/f/o;->a(Lcom/nianticproject/ingress/f/o;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/f/o;->b(Lcom/nianticproject/ingress/f/o;[I)[I

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/f/o;->a(Lcom/nianticproject/ingress/f/o;[I)[I

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/f/p;->a:Lcom/nianticproject/ingress/f/o;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/f/o;->notifyDataSetChanged()V

    .line 77
    return-void
.end method
