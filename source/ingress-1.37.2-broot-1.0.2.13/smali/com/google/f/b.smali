.class public abstract Lcom/google/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/f/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/f/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/f/j;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/f/b;->a()Lcom/google/f/b;

    move-result-object v0

    return-object v0
.end method
