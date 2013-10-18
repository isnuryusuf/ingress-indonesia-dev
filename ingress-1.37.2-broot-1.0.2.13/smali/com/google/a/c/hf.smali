.class final Lcom/google/a/c/hf;
.super Lcom/google/a/c/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/y",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .parameter

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/google/a/c/hf;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/a/c/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/a/c/hf;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/google/a/c/hf;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
