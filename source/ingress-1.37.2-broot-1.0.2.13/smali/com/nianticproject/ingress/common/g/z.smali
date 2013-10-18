.class public final Lcom/nianticproject/ingress/common/g/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/h;


# instance fields
.field private final a:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/a/d/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/z;->a:Lcom/google/a/c/dc;

    .line 33
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/z;->a:Lcom/google/a/c/dc;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    const-string/jumbo v0, "S2CellID region: %d cells"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/z;->a:Lcom/google/a/c/dc;

    invoke-virtual {v3}, Lcom/google/a/c/dc;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
