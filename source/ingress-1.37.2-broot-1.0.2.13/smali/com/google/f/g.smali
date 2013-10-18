.class public abstract Lcom/google/f/g;
.super Lcom/google/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/f/f;",
        "BuilderType:",
        "Lcom/google/f/g;",
        ">",
        "Lcom/google/f/b",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/f/b;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/f/b;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/f/g;->b()Lcom/google/f/g;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/f/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/f/g;->b()Lcom/google/f/g;

    move-result-object v0

    return-object v0
.end method
