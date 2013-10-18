.class final Lcom/google/a/c/dd;
.super Lcom/google/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/dc;


# direct methods
.method constructor <init>(Lcom/google/a/c/dc;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/a/c/dd;->a:Lcom/google/a/c/dc;

    invoke-direct {p0, p2, p3}, Lcom/google/a/c/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/a/c/dd;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
