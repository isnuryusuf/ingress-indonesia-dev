.class public final enum Lcom/nianticproject/ingress/common/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/b;

.field public static final enum b:Lcom/nianticproject/ingress/common/b;

.field private static final synthetic d:[Lcom/nianticproject/ingress/common/b;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/common/b;

    const-string/jumbo v1, "REAL_WORLD"

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticproject/ingress/common/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/b;

    const-string/jumbo v1, "TRAINING"

    invoke-direct {v0, v1, v3, v3}, Lcom/nianticproject/ingress/common/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/b;->b:Lcom/nianticproject/ingress/common/b;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticproject/ingress/common/b;

    sget-object v1, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/b;->b:Lcom/nianticproject/ingress/common/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticproject/ingress/common/b;->d:[Lcom/nianticproject/ingress/common/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/nianticproject/ingress/common/b;->c:I

    .line 46
    return-void
.end method

.method public static a(I)Lcom/nianticproject/ingress/common/b;
    .locals 3
    .parameter

    .prologue
    .line 55
    packed-switch p0, :pswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is an unknown channel ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    .line 59
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/b;->b:Lcom/nianticproject/ingress/common/b;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/b;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/nianticproject/ingress/common/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/b;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/b;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nianticproject/ingress/common/b;->d:[Lcom/nianticproject/ingress/common/b;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/b;

    return-object v0
.end method
