.class final Lcom/google/a/d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/d/l;


# direct methods
.method strictfp constructor <init>(Lcom/google/a/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/a/d/m;->a:Lcom/google/a/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 239
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/a/d/m;->a:Lcom/google/a/d/l;

    invoke-static {v0}, Lcom/google/a/d/l;->a(Lcom/google/a/d/l;)[J

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/a/d/m;->a:Lcom/google/a/d/l;

    invoke-static {v2}, Lcom/google/a/d/l;->b(Lcom/google/a/d/l;)[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/a/d/m;->a:Lcom/google/a/d/l;

    invoke-static {v3}, Lcom/google/a/d/l;->a(Lcom/google/a/d/l;)[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/google/a/d/m;->a:Lcom/google/a/d/l;

    invoke-static {v5}, Lcom/google/a/d/l;->b(Lcom/google/a/d/l;)[I

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/a/d/l;->a(JIJI)I

    move-result v0

    return v0
.end method
