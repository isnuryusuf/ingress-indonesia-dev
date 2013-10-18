.class public abstract Lcom/google/a/a/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/a/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/a/a/bx;

    invoke-direct {v0}, Lcom/google/a/a/bx;-><init>()V

    sput-object v0, Lcom/google/a/a/bw;->a:Lcom/google/a/a/bw;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/a/a/bw;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/a/a/bw;->a:Lcom/google/a/a/bw;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
