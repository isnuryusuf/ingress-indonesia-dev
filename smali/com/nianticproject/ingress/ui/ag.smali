.class final enum Lcom/nianticproject/ingress/ui/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/ui/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/ui/ag;

.field public static final enum b:Lcom/nianticproject/ingress/ui/ag;

.field public static final enum c:Lcom/nianticproject/ingress/ui/ag;

.field private static final synthetic f:[Lcom/nianticproject/ingress/ui/ag;


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/nianticproject/ingress/ui/ag;

    const-string/jumbo v1, "LOCAL"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/nianticproject/ingress/ui/ag;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ag;->a:Lcom/nianticproject/ingress/ui/ag;

    .line 87
    new-instance v0, Lcom/nianticproject/ingress/ui/ag;

    const-string/jumbo v1, "REGION"

    const/16 v2, 0x3e8

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/nianticproject/ingress/ui/ag;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    .line 88
    new-instance v0, Lcom/nianticproject/ingress/ui/ag;

    const-string/jumbo v1, "GLOBAL"

    const/16 v2, 0x7d0

    const/16 v3, 0x4e2f

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nianticproject/ingress/ui/ag;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ag;->c:Lcom/nianticproject/ingress/ui/ag;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/ui/ag;

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->a:Lcom/nianticproject/ingress/ui/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->c:Lcom/nianticproject/ingress/ui/ag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/ui/ag;->f:[Lcom/nianticproject/ingress/ui/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/nianticproject/ingress/ui/ag;->d:I

    .line 95
    iput p4, p0, Lcom/nianticproject/ingress/ui/ag;->e:I

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/ag;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/nianticproject/ingress/ui/ag;->e:I

    return v0
.end method

.method public static a(I)Lcom/nianticproject/ingress/ui/ag;
    .locals 2
    .parameter

    .prologue
    .line 111
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->a:Lcom/nianticproject/ingress/ui/ag;

    iget v0, v0, Lcom/nianticproject/ingress/ui/ag;->d:I

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    iget v1, v1, Lcom/nianticproject/ingress/ui/ag;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_0

    .line 112
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->a:Lcom/nianticproject/ingress/ui/ag;

    .line 116
    :goto_0
    return-object v0

    .line 113
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    iget v0, v0, Lcom/nianticproject/ingress/ui/ag;->d:I

    sget-object v1, Lcom/nianticproject/ingress/ui/ag;->c:Lcom/nianticproject/ingress/ui/ag;

    iget v1, v1, Lcom/nianticproject/ingress/ui/ag;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_1

    .line 114
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    goto :goto_0

    .line 116
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->c:Lcom/nianticproject/ingress/ui/ag;

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ui/ag;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/nianticproject/ingress/ui/ag;->d:I

    return v0
.end method

.method public static b(I)Lcom/nianticproject/ingress/ui/ag;
    .locals 5
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/nianticproject/ingress/ui/ag;->values()[Lcom/nianticproject/ingress/ui/ag;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 127
    iget v4, v0, Lcom/nianticproject/ingress/ui/ag;->e:I

    if-ne v4, p0, :cond_0

    .line 132
    :goto_1
    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->b:Lcom/nianticproject/ingress/ui/ag;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/ui/ag;
    .locals 1
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/nianticproject/ingress/ui/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/ag;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/ui/ag;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/nianticproject/ingress/ui/ag;->f:[Lcom/nianticproject/ingress/ui/ag;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/ui/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/ui/ag;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/nianticproject/ingress/ui/af;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/ag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/ag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090070

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nianticproject/ingress/ui/ag;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f090075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
