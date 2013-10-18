.class public final enum Lcom/google/android/youtube/player/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/player/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/youtube/player/c;

.field public static final enum b:Lcom/google/android/youtube/player/c;

.field public static final enum c:Lcom/google/android/youtube/player/c;

.field public static final enum d:Lcom/google/android/youtube/player/c;

.field public static final enum e:Lcom/google/android/youtube/player/c;

.field public static final enum f:Lcom/google/android/youtube/player/c;

.field public static final enum g:Lcom/google/android/youtube/player/c;

.field public static final enum h:Lcom/google/android/youtube/player/c;

.field public static final enum i:Lcom/google/android/youtube/player/c;

.field public static final enum j:Lcom/google/android/youtube/player/c;

.field public static final enum k:Lcom/google/android/youtube/player/c;

.field public static final enum l:Lcom/google/android/youtube/player/c;

.field private static final synthetic m:[Lcom/google/android/youtube/player/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->a:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->b:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->c:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "SERVICE_MISSING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->d:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "SERVICE_VERSION_UPDATE_REQUIRED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->e:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "SERVICE_DISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->f:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "SERVICE_INVALID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->g:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "ERROR_CONNECTING_TO_SERVICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->h:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "CLIENT_LIBRARY_UPDATE_REQUIRED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->i:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "NETWORK_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->j:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "DEVELOPER_KEY_INVALID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->k:Lcom/google/android/youtube/player/c;

    new-instance v0, Lcom/google/android/youtube/player/c;

    const-string/jumbo v1, "INVALID_APPLICATION_SIGNATURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/c;->l:Lcom/google/android/youtube/player/c;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/youtube/player/c;

    sget-object v1, Lcom/google/android/youtube/player/c;->a:Lcom/google/android/youtube/player/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/player/c;->b:Lcom/google/android/youtube/player/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/player/c;->c:Lcom/google/android/youtube/player/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/player/c;->d:Lcom/google/android/youtube/player/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/player/c;->e:Lcom/google/android/youtube/player/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/player/c;->f:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/player/c;->g:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/player/c;->h:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/player/c;->i:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/player/c;->j:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/player/c;->k:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/player/c;->l:Lcom/google/android/youtube/player/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/player/c;->m:[Lcom/google/android/youtube/player/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/c;
    .locals 1

    const-class v0, Lcom/google/android/youtube/player/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/c;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/player/c;
    .locals 1

    sget-object v0, Lcom/google/android/youtube/player/c;->m:[Lcom/google/android/youtube/player/c;

    invoke-virtual {v0}, [Lcom/google/android/youtube/player/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/player/c;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    sget-object v0, Lcom/google/android/youtube/player/d;->a:[I

    invoke-virtual {p0}, Lcom/google/android/youtube/player/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/youtube/player/e;

    invoke-direct {v2, p1, v0}, Lcom/google/android/youtube/player/e;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/youtube/player/internal/al;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/al;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/youtube/player/d;->a:[I

    invoke-virtual {p0}, Lcom/google/android/youtube/player/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected errorReason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/google/android/youtube/player/internal/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/bi;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/youtube/player/internal/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/bi;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v3, v0, Lcom/google/android/youtube/player/internal/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/youtube/player/internal/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/al;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_3
    iget-object v3, v0, Lcom/google/android/youtube/player/internal/al;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/youtube/player/internal/al;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/al;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v3, v0, Lcom/google/android/youtube/player/internal/al;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/youtube/player/internal/al;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/al;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    sget-object v0, Lcom/google/android/youtube/player/d;->a:[I

    invoke-virtual {p0}, Lcom/google/android/youtube/player/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
