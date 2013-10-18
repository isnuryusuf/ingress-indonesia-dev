.class public final La/a/a/a/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:La/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, La/a/a/a/c/g;->a:[Ljava/lang/Object;

    .line 951
    new-instance v0, La/a/a/a/c/h;

    invoke-direct {v0, v1}, La/a/a/a/c/h;-><init>(B)V

    sput-object v0, La/a/a/a/c/g;->b:La/a/a/a/d;

    return-void
.end method

.method public static a([Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;)V"
        }
    .end annotation

    .prologue
    .line 306
    array-length v0, p0

    .line 307
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aput-object v0, p0, v1

    move v0, v1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method
