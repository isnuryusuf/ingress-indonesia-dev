.class final Lcom/google/a/c/gt;
.super Lcom/google/a/c/gd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/fi",
        "<TK;TV;>.com/google/a/c/gd<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/fi;


# direct methods
.method constructor <init>(Lcom/google/a/c/fi;)V
    .locals 0
    .parameter

    .prologue
    .line 3726
    iput-object p1, p0, Lcom/google/a/c/gt;->a:Lcom/google/a/c/fi;

    invoke-direct {p0, p1}, Lcom/google/a/c/gd;-><init>(Lcom/google/a/c/fi;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3730
    invoke-virtual {p0}, Lcom/google/a/c/gt;->a()Lcom/google/a/c/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/hb;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
