.class final Lt;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# instance fields
.field private synthetic a:Lc;


# direct methods
.method constructor <init>(Lc;)V
    .locals 0

    iput-object p1, p0, Lt;->a:Lc;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    sget v0, LJ;->b:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lt;->a:Lc;

    iget-object v0, v0, Lc;->a:Lb;

    invoke-static {v0}, Lb;->c(Lb;)V

    invoke-static {}, LJ;->b()V

    return-void

    :sswitch_0
    const/16 v0, 0x7530

    sput v0, LJ;->b:I

    goto :goto_0

    :sswitch_1
    const v0, 0xea60

    sput v0, LJ;->b:I

    goto :goto_0

    :sswitch_2
    const v0, 0x1d4c0

    sput v0, LJ;->b:I

    goto :goto_0

    :sswitch_3
    const v0, 0x493e0

    sput v0, LJ;->b:I

    goto :goto_0

    :sswitch_4
    const v0, 0x927c0

    sput v0, LJ;->b:I

    goto :goto_0

    :sswitch_5
    const v0, 0xdbba0

    sput v0, LJ;->b:I

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    sput v0, LJ;->b:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
        0xdbba0 -> :sswitch_6
    .end sparse-switch
.end method
