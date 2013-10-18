.class final Lcom/google/a/c/ei;
.super Lcom/google/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1089
    iput-object p3, p0, Lcom/google/a/c/ei;->a:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/a/c/ei;->b:I

    invoke-direct {p0, p1, p2}, Lcom/google/a/c/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/a/c/ei;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/c/ei;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
