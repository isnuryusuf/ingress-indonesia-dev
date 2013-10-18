.class abstract Lcom/google/a/a/t;
.super Lcom/google/a/a/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/google/a/a/f;-><init>(Ljava/lang/String;)V

    .line 813
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 806
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/a/a/f;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
