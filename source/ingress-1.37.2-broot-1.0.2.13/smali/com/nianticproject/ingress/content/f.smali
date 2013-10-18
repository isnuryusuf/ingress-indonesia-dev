.class public final Lcom/nianticproject/ingress/content/f;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/content/f;->a:Landroid/util/SparseArray;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/content/f;->a:Landroid/util/SparseArray;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v0, "getMarkupForCurrentPosition"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/f;->getPosition()I

    move-result v1

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/content/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/content/f;->getBlob(I)[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    invoke-static {v0}, Lcom/nianticproject/ingress/content/e;->a([B)Ljava/util/List;

    move-result-object v0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/content/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/content/e;->p()Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 94
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/content/e;->p()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
